const db = require('../../../models');
const { FtpImage, Invoice } = db;
const ftp = require('basic-ftp');
const path = require('path');
const stream = require('stream');
const { getIntKeyByValueOrNull } = require('../../helpers/commonHelper');
const { invoiceStatus } = require('../../../config/constants');
const ftpClient = new ftp.Client();
ftpClient.ftp.verbose = true;

async function connectFTP() {
  await ftpClient.access({
    host: process.env.FTP_HOST,
    user: process.env.FTP_USERNAME,
    password: process.env.FTP_PASSWORD,
  });
}

const uploadImage = async (buffer, originalName, invoiceId, userId) => {
  if (!buffer || !originalName) {
    throw new Error('No file uploaded');
  }

  const filetypes = /jpeg|jpg|png/;
  const extname = filetypes.test(path.extname(originalName).toLowerCase());

  if (!extname) {
    throw new Error('Only image files are allowed!');
  }

  const existingFile = await FtpImage.findOne({
    where: {
      user_id: userId,
      invoice_id: invoiceId,
    },
  });

  if (existingFile) {
    return;
  }

  try {
    const storageFilename = `${invoiceId}-${userId}-${Date.now()}_${path.basename(
      originalName,
    )}`;
    const remoteFilePath = `/${storageFilename}`;

    await connectFTP();

    // Convert buffer to stream
    const bufferStream = new stream.PassThrough();
    bufferStream.end(buffer);

    await ftpClient.uploadFrom(bufferStream, remoteFilePath);

    await FtpImage.create({
      original_file_name: originalName,
      storage_file_name: storageFilename,
      invoice_id: invoiceId,
      user_id: userId,
      created_at: new Date(),
    });

    await ftpClient.close();

    return await Invoice.update(
      {
        status: getIntKeyByValueOrNull(invoiceStatus, 'paid'),
      },
      {
        where: {
          id: invoiceId,
          user_id: userId,
        },
      },
    );
  } catch (error) {
    console.error('Error uploading image:', error);
    throw new Error('Failed to upload image');
  }
};

const getImage = async id => {
  try {
    const data = await FtpImage.findOne({
      where: {
        invoice_id: id,
      },
    });
    await connectFTP();
    console.log(data.storage_file_name);
    const remoteFilePath = `/${data.storage_file_name}`;
    const bufferStream = new stream.PassThrough();
    await ftpClient.downloadTo(bufferStream, remoteFilePath);
    await ftpClient.close();
    return bufferStream;
  } catch (error) {
    console.error('Error fetching image:', error);
    throw new Error('Failed to fetch image');
  }
};

module.exports = {
  uploadImage,
  getImage,
};
