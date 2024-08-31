const db = require('../../../models');
const { Promocode } = db;
const { updateOnNeed } = require('../../helpers/commonHelper');
const moment = require('moment');

const getPromocodes = async () => {
  const promocodeRes = await Promocode.findAll();
  return {
    promocodes: _formatPromocodes(promocodeRes) || [],
  };
};

const _formatPromocodes = data => {
  return data.map(d => ({
    id: d.id,
    code: d.code,
    discount: d.discount,
    maxUses: d.max_uses,
    timesUsed: d.times_used,
    expiresAt: formatDate(d.expires_at),
  }));
};

const formatDate = date => {
  if (!date) return null;
  return moment(date).format('YYYY-MM-DD');
};

const createPromocode = async body => {
  return await Promocode.create({
    code: body.code,
    discount: body.discount,
    max_uses: body.maxUses,
    expires_at: body.expiresAt,
  });
};

const updatePromocode = async (id, body) => {
  const promocode = await Promocode.findByPk(id);
  if (!promocode) {
    throw new Error('Promocode not found');
  }

  const fieldsToUpdate = [
    'code',
    'discount',
    ['max_uses', 'maxUses'],
    ['expires_at', 'expiresAt'],
  ];

  updateOnNeed(promocode, body, fieldsToUpdate);

  return await promocode.save();
};

const deletePromocode = async id => {
  const promocode = await Promocode.findByPk(id);
  if (!promocode) {
    throw new Error('Promocode not found');
  }

  return await promocode.destroy();
};

const applyPromocode = async code => {
  const promocode = await Promocode.findOne({ where: { code } });
  if (!promocode) {
    throw new Error('Promocode not found');
  }

  if (promocode.times_used >= promocode.max_uses) {
    throw new Error('Promocode has expired');
  }

  const now = new Date();
  if (promocode.expires_at && now > promocode.expires_at) {
    throw new Error('Promocode has expired');
  }

  promocode.times_used += 1;
  await promocode.save();

  return {
    discount: promocode.discount,
  };
};

module.exports = {
  getPromocodes,
  createPromocode,
  updatePromocode,
  deletePromocode,
  applyPromocode,
};
