'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Vps extends Model {}

  Vps.init(
    {
      id: {
        type: DataTypes.BIGINT.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      series: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      os: {
        type: DataTypes.ENUM,
        values: ['windows', 'linux'],
        allowNull: false,
      },
      ram: {
        type: DataTypes.STRING,
        allowNull: false,
      },
      pricing: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
      },
      created_at: {
        type: DataTypes.DATE,
        allowNull: false,
        defaultValue: DataTypes.NOW,
      },
    },
    {
      sequelize,
      modelName: 'Vps',
      tableName: 'vps',
      timestamps: false,
      underscored: true,
    },
  );

  return Vps;
};
