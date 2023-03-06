// import sequelize 
var sequelize = require('sequelize')
// import connection 
var con = require('../config/database.js')

const { DataTypes } = sequelize;

// Define schema
const Book = con.db.define('books', {
    // Define attributes
    title: {
      type: DataTypes.STRING
    },
    author: {
        type: DataTypes.STRING
      },
    author_year_of_death: {
      type: DataTypes.STRING
    },
    tags: {
        type: DataTypes.STRING
    },
    publisher: {
        type: DataTypes.STRING
    }
  },{
    // Freeze Table Name
    freezeTableName: true
  });
   
  // Export model Product
  module.exports = { 
    Book
  }