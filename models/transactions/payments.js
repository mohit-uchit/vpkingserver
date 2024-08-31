'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Payment extends Model {}
  Payment.init(
    {
      id: {
        type: DataTypes.BIGINT.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      invoice_id: {
        type: DataTypes.BIGINT.UNSIGNED,
        allowNull: false,
        references: {
          model: 'Invoice',
          key: 'id',
        },
      },
      utr_number: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      payment_screenshot: {
        type: DataTypes.STRING, // Path to the uploaded screenshot
        allowNull: true,
      },
      status: {
        type: DataTypes.TINYINT.UNSIGNED, // 0 => pending, 1 => approved
        allowNull: false,
        defaultValue: 0,
      },
      created_at: {
        type: DataTypes.DATE,
        allowNull: true,
      },
      updated_at: {
        type: DataTypes.DATE,
        allowNull: true,
      },
    },
    {
      sequelize,
      modelName: 'Payment',
      tableName: 'payments',
      timestamps: true,
      underscored: true,
    },
  );

  Payment.associate = models => {
    Payment.belongsTo(models.Invoice, {
      foreignKey: 'invoice_id',
      as: 'invoice',
    });
  };

  return Payment;
};
