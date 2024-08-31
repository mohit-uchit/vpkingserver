'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.addColumn('invoices', 'product_details', {
      type: Sequelize.JSON,
      allowNull: true,
      comment: 'Details of the products associated with the invoice',
    });

    await queryInterface.addColumn('invoices', 'credentials', {
      type: Sequelize.JSON,
      allowNull: true,
      comment: 'Credentials associated with the invoice',
    });

    await queryInterface.addColumn('invoices', 'utr', {
      type: Sequelize.STRING,
      allowNull: true,
    });

    await queryInterface.addColumn('invoices', 'type', {
      type: Sequelize.TINYINT.UNSIGNED,
      allowNull: true,
    });
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.removeColumn('invoices', 'product_details');
    await queryInterface.removeColumn('invoices', 'credentials');
    await queryInterface.removeColumn('invoices', 'utr');
    await queryInterface.removeColumn('invoices', 'type');
  },
};
