// Import express
var express = require ('express');
 // Init express router
var router = express.Router();
var Book = require('../controllers/book.js')



router.get('/api/mengaji_online',function (req, res, next) {
    res.send({message:'Welcome Patern'})
    res.end()
})



router.post('/api/mengaji_online/auth',function (req, res, next) {
    Auth.Login(req,res)
})




router.post('/api/mengaji_online/books',Book.Create)
router.get('/api/mengaji_online/books',Book.Read)
router.post('/api/mengaji_online/books/search',Book.ReadByID)
router.put('/api/mengaji_online/books/:id',Book.Update)
router.delete('/api/mengaji_online/books/:id',Book.Delete)

module.exports.router = router

