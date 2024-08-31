    'use strict';
    const { Model } = require('sequelize');

    module.exports = (sequelize, DataTypes) => {
      class FtpImage extends Model {}

      FtpImage.init(
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
          user_id: {
            type: DataTypes.BIGINT.UNSIGNED,
            allowNull: false,
            references: {
              model: 'User',
              key: 'id',
            },
          },
          original_file_name: {
            type: DataTypes.STRING,
            allowNull: false,
          },
          storage_file_name: {
            type: DataTypes.STRING,
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
          modelName: 'FtpImage',
          tableName: 'ftp_images',
          timestamps: false,
          underscored: true,
        },
      );

      FtpImage.associate = models => {
        FtpImage.belongsTo(models.User, {
          foreignKey: 'user_id',
          as: 'user',
        });

        FtpImage.belongsTo(models.Invoice, {
          foreignKey: 'invoice_id',
          as: 'invoice',
        });
      };

      return FtpImage;
    };
