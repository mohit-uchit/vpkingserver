'use strict';
const { Model } = require('sequelize');

module.exports = (sequelize, DataTypes) => {
  class Invoice extends Model {}
  Invoice.init(
    {
      id: {
        type: DataTypes.BIGINT.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
      },
      user_id: {
        type: DataTypes.BIGINT.UNSIGNED,
        allowNull: false,
        references: {
          model: 'User',
          key: 'id',
        },
      },
      amount: {
        type: DataTypes.DECIMAL(10, 2),
        allowNull: false,
      },
      status: {
        type: DataTypes.TINYINT.UNSIGNED, // 0 => pending, 1 => approved, 2 => completed
        allowNull: false,
        defaultValue: 0,
      },
      product_details: {
        type: DataTypes.JSON,
        allowNull: true,
        comment: 'Details of the products associated with the invoice',
      },
      credentials: {
        type: DataTypes.JSON,
        allowNull: true,
        comment: 'Credentials associated with the invoice',
      },
      utr: {
        type: DataTypes.STRING,
        allowNull: true,
      },
      type: {
        type: DataTypes.TINYINT.UNSIGNED,
        allowNull: true,
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
      modelName: 'Invoice',
      tableName: 'invoices',
      timestamps: true,
      underscored: true,
    },
  );

  Invoice.associate = models => {
    Invoice.belongsTo(models.User, {
      foreignKey: 'user_id',
      as: 'user',
    });
    Invoice.hasMany(models.Payment, {
      foreignKey: 'invoice_id',
      as: 'payments',
    });
    Invoice.hasMany(models.FtpImage, {
      foreignKey: 'invoice_id',
      as: 'images',
    });
  };

  return Invoice;
};
