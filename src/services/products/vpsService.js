const db = require('../../../models');
const { Vps } = db;
const { updateOnNeed } = require('../../helpers/commonHelper');

const getVpsInstances = async () => {
  const vpsRes = await Vps.findAll();
  return {
    vps: _formatVps(vpsRes),
  };
};

const _formatVps = data => {
  return data.map(d => ({
    id: d.id,
    series: d.series,
    os: d.os,
    ram: d.ram,
    pricing: d.pricing,
  }));
};

const createVps = async body => {

  return await Vps.create({
    series: body.series,
    os: body.os,
    ram: body.ram,
    pricing: body.pricing,
  });
};

const updateVps = async (id, body) => {
  if (!body || !id) {
    throw new Error('Invalid data: id and body are required');
  }

  const vps = await Vps.findByPk(id);
  if (!vps) {
    throw new Error('Vps not found');
  }

  updateOnNeed(vps, body, ['series', 'os', 'ram', 'pricing']);

  return await vps.save();
};

const deleteVps = async id => {
  if (!id) {
    throw new Error('Invalid data: id is required');
  }

  const vps = await Vps.findByPk(id);
  if (!vps) {
    throw new Error('Vps not found');
  }

  return await vps.destroy();
};

const buyVps = async () => { 
  const vpsRes = await Vps.findAll();
  return vpsRes.map(d => ({
    id: d.id,
    series: d.series,
    os: d.os,
    ram: d.ram,
    pricing: d.pricing,
  }));

}

module.exports = {
  getVpsInstances,
  createVps,
  updateVps,
  deleteVps,
  buyVps,
};
