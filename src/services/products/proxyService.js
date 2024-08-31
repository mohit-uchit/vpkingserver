const db = require('../../../models');
const { Proxy } = db;
const { updateOnNeed } = require('../../helpers/commonHelper');

const getProxies = async () => {
  const proxyRes = await Proxy.findAll();

  return {
    proxies: _formatProxies(proxyRes),
  };
};

const _formatProxies = data => {
  return data.map(d => ({
    id: d.id,
    port: d.port_number,
    series: d.series,
    ram: d.ram,
    pricing: d.pricing,
  }));
};

const createProxy = async body => {
  return await Proxy.create({
    port_number: body.portNumber,
    series: body.series,
    ram: body.ram,
    pricing: body.pricing,
  });
};

const updateProxy = async (id, body) => {
  const proxy = await Proxy.findByPk(id);
  if (!proxy) {
    throw new Error('Proxy not found');
  }

  const fieldsToUpdate = [
    ['port_number', 'portNumber'],
    'series',
    'pricing',
    'ram',
  ];

  updateOnNeed(proxy, body, fieldsToUpdate);

  return await proxy.save();
};

const deleteProxy = async id => {
  const proxy = await Proxy.findByPk(id);
  if (!proxy) {
    throw new Error('Proxy not found');
  }

  return await proxy.destroy();
};

const buyProxy = async () => {
  const proxyRes = await Proxy.findAll();
  return proxyRes.map(d => ({
    id: d.id,
    port: d.port_number,
    series: d.series,
    ram: d.ram,
    pricing: d.pricing,
  }));
};
module.exports = {
  getProxies,
  createProxy,
  updateProxy,
  deleteProxy,
  buyProxy,
};
