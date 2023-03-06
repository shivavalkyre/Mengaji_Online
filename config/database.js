// import sequelize
var sequelize = require('sequelize');
require('dotenv').config();
 
// create connection
const db = new sequelize(process.env.DATABASE, process.env.DB_USER,process.env.DB_PASSWORD, {
    host: 'localhost',
    dialect: 'mysql',
    logging: false,
    charset: 'utf8',
    collate: 'utf8_general_ci', 
});
 
// export connection
module.exports.db = db