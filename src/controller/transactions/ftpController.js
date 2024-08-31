const ftpService = require('../../services/transactions/ftpService');
const responseHandle = require('../../helpers/responseHanlde');

const uploadImage = async (req, res) => {
  try {
    const { file } = req;
    const { id } = req.params;

    if (!file) {
      return responseHandle.handleError(res, new Error('No file uploaded'));
    }

    await ftpService.uploadImage(
      file.buffer,
      file.originalname,
      id,
      req.userId,
    );
    return responseHandle.handleData(res);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

const getImage = async (req, res) => {
  try {
    const { id } = req.params;
    const imageStream = await ftpService.getImage(id);

    res.setHeader('Content-Type', 'image/jpeg'); // or 'image/png' based on your image type
    return imageStream.pipe(res);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

module.exports = {
  uploadImage,
  getImage,
};
