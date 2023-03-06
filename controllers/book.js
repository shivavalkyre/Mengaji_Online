var Model = require('../models/book.js')
var Book = Model.Book
var util = require('util');
var futil = require('../config/utility.js');
const { Op } = require("sequelize");

var Create = async function(req,res){
    try {
        const book = await Book.create(req.body);
        futil.logger.debug('\n' + futil.shtm() + '- [ RESULT ] | QUERING ' + util.inspect(book));
        var reply = {"success":true,"description":"success",book}
        res.send(reply);
    } catch (err) {
        futil.logger.debug('\n' + futil.shtm() + '- [ ERROR ] | QUERING ' + util.inspect(err));
        var reply = {"success":false,"description":"failed",err}
        res.send(reply);
    }
}

var Read = async function(req,res){

    var {page,size} = req.query
   

    const limit = size ? + size : 3;
    const offset = page ? page * limit : 0;

    try {
        const book = await Book.findAll({
            limit: limit,
            offset: offset
        });
        futil.logger.debug('\n' + futil.shtm() + '- [ RESULT ] | QUERING ' + util.inspect(book));
        var reply = {"success":true,"description":"success",book}
        res.send(reply);
    } catch (err) {
        futil.logger.debug('\n' + futil.shtm() + '- [ ERROR ] | QUERING ' + util.inspect(err));
        var reply = {"success":false,"description":"failed",err}
        res.send(reply);
    }
}

var ReadByID = async function(req,res){

    // var {title,author} = req.query
    const filters = req.query;
    var is_order = false
    
    //let filter_data = {}
    let filter_arr = []


    for (key in filters) 
    {   
        // console.log(key +':'+ filters[key]);
        // console.log(JSON.stringify(key))
        
        const result =  String(key);

        // console.log(result);
        // console.log(typeof result);

        if(result === 'order')
        {
            is_order = true
            const order_array = eval(req.query.order)
            var k_arr = []
            
            for (i=0;i<=order_array.length-1;i++)
            {   
                console.log(order_array[i])
                for(key in order_array[i])
                {
                    // console.log(key)
                    // console.log(order_array[i][key])
                    var n_arr = [key,order_array[i][key]]
                    // console.log(n_arr)
                    k_arr.push (n_arr)
                }
            }
           
            // console.log(k_arr)
            
        }
        else
        {
            var filter_data ={}
            filter_data[key] = filters[key]
            filter_arr.push(filter_data)
        }
        
       
    }

    

    var book

    try {

        if (is_order == false)
        {
          book  = await Book.findAll({
           
                where:{
                    [Op.or]: filter_arr
                }
            });
        }
        else
        {
            book  = await Book.findAll({
           
                where:{
                    [Op.or]: filter_arr
                },
                order: k_arr
            });
        }
       

        futil.logger.debug('\n' + futil.shtm() + '- [ RESULT ] | QUERING ' + util.inspect(book));
        var reply = {"success":true,"description":"success",book}
        res.send(reply);

    } catch (err) {
        futil.logger.debug('\n' + futil.shtm() + '- [ ERROR ] | QUERING ' + util.inspect(err));
        var reply = {"success":false,"description":"failed",err}
        res.send(reply);
    }
   
}

var Update = async function (req,res){
    try {
        await Book.update(req.body, {
            where: {
                id: req.params.id
            }
        });
        res.json({
            "message": "Book Updated"
        });
    } catch (err) {
        futil.logger.debug('\n' + futil.shtm() + '- [ ERROR ] | QUERING ' + util.inspect(err));
        var reply = {"success":false,"description":"failed",err}
        res.send(reply);
    }
}

var Delete = async function (req,res){
    try {
        await Book.destroy({
            where: {
                id: req.params.id
            }
        });
        res.json({
            "message": "Book Deleted"
        });
    } catch (err) {
        futil.logger.debug('\n' + futil.shtm() + '- [ ERROR ] | QUERING ' + util.inspect(err));
        var reply = {"success":false,"description":"failed",err}
        res.send(reply);
    }
}

module.exports = {
    Create,
    Read,
    ReadByID,
    Update,
    Delete
}