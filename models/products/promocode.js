'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Promocode extends Model {}
  Promocode.init(
    {
      id: {
        type: DataTypes.BIGINT.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      code: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
      },
      discount: {
        type: DataTypes.FLOAT,
        allowNull: false,
      },
      max_uses: {
        type: DataTypes.INTEGER,
        allowNull: false,
      },
      times_used: {
        type: DataTypes.INTEGER,
        defaultValue: 0,
      },
      expires_at: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      deleted_at: {
        type: 'TIMESTAMP',
        allowNull: true,
      },
      created_at: {
        type: 'TIMESTAMP',
        allowNull: true,
      },
      updated_at: {
        type: 'TIMESTAMP',
        allowNull: true,
      },
    },
    {
      sequelize,
      modelName: 'Promocode',
      tableName: 'promocodes',
      timestamps: true,
      underscored: true,
      paranoid: true,
    },
  );

  return Promocode;
};
