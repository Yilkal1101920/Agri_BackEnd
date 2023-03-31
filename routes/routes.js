// import express
const express = require("express");

// import function from controller
const {uploadHandler}  = require("../controllers/uploadHandler.js")
const {newsUploadHandler}  = require("../controllers/newsUploadHandler.js")
const {idImageUploadHandler}  = require("../controllers/idImageUploadHandler.js")
const {photoImageUploadHandler}  = require("../controllers/photoImageUploadHandler.js")
const {userPasswordEncrypt}  = require("../controllers/encryptPassword.js")


const { showProducts, showOrderedProducts, showOrdersByEmail, showOrderByEmailProductId, showOrderByEmailProductIdPaymentStatus, showOrderWithSelect, showProductById,showProductByIdforVmodel, showProductRateById, showProductRateByIdd, showProductRateByIdAndEmail, showOrderByOrderId, showFavoriteByEmail, showProductsWithFavorate, showPostedAmountByKebeleAndName, showCPID, createProduct, createOrder, createFavorite, createCPID, updateProduct, rollBackProductFromMarketToStore, updateProductInMarket, updateProductforCartConfirmation, updateProductRateById, updateProductRateByIdAndEmail, updateOrderByEmailAndProductId, confirmOrderByOrderId, updateOrderByOrderIdforPayment, rollBackAmountUpdate, rollBackProductAmountInMarketUpdate, editProduct, updateOrder, updateProductByEmailKebeleAndProductName, updateProductByProductIdforMarket, rejectProductByProductIdforMarket, updateProductAmountbyProductId, deleteProduct, deleteUser, deleteOrder, deleteOrderByIdAndKebele } = require("../controllers/product.js");
const { createUser, createAccountByUsername, showUsers, showUserByEmail, showUserByEmailAndPassword, showUserByMahiberatId, updateUserByEmaill, updateUserbyEmail, updateAccount, deActivateUserAccount, deleteUserbyEmail } = require("../controllers/user.js");
const { createNews, showNews, showNewsByKebele, saveShowedNotification, showShowedNotificationByEmail, updateShowedNotificationByEmail, deleteNew } = require("../controllers/news.js");
const { createMessage, showMessages } = require("../controllers/chat.js");
const { createMahiberatMembers, showMahiberatMembers, showMahiberatMemberByMahiberatId, updateEmployerInformationByUsername, updateEmployerPhotoByUsername, deleteEmployer, deleteMember } = require("../controllers/mahiberatMembers.js");
const { createOrderRestriction, showOrderRestrictionById, showOrderRestriction, deleteOrderRestrictionByIdAndKebele } = require("../controllers/ordersRestriction.js");
const { createTransactionHistory, showTransactionHistoryByEmailAndProductName, updateTransactionHistoryByEmailAndProductName, deleteTransactionByIdAndKebele } = require("../controllers/transaction.js");
const { createProductRateAndFavorite, showProductRateAndFavorite, showProductRateAndFavoriteByUserEmailAndProductId } = require("../controllers/productRatingAndFavorite.js");
const { createReport, showReports } = require("../controllers/report.js");

const { stripePayment } = require("../config/stripePayment.js");
const verifyPayment  = require("../controllers/verifyPayment.js");
//const paymentSuccess = require("../controllers/paymentSuccess.js");
const handlePayment = require("../controllers/handlePayment.js");

 
// init express router
const router = express.Router();

router.get('/a_users', require('../users/users.controller.js'));

 
// Get All Product
router.get('/products', showProducts);
router.get('/orderedProducts', showOrderedProducts);
router.get('/productsFavorite', showProductsWithFavorate);
router.get('/favorite/:id', showProductRateById);
router.get('/rate/:id', showProductRateByIdd);
router.get('/favorite/:id, email', showProductRateByIdAndEmail);
router.get('/users', showUsers);
router.get('/report', showReports);
router.get('/users/:email', showUserByEmail);
router.get('/users/login/:email/:password', showUserByEmailAndPassword);
router.get('/users/userName/:id', showUserByMahiberatId);
router.get('/order', showOrdersByEmail);
router.get('/order/email/:email/:id', showOrderByEmailProductId);
router.get('/order/email/payment/:email/:id/:payment', showOrderByEmailProductIdPaymentStatus);
router.get('/joinOrder', showOrderWithSelect);
router.get('/order/:id', showOrderByOrderId);
router.post("/uploadImage",uploadHandler);
router.get("/uploadImage",uploadHandler);

router.post("/KebeleIdImage",idImageUploadHandler);

router.post("/newsUploadImage",newsUploadHandler);
router.post("/uploadPhoto",photoImageUploadHandler);
router.post('/payment', stripePayment);
router.post("/passwordEncription", userPasswordEncrypt);

router.get("/mahiberat/totalMembers",showMahiberatMembers);
router.get("/mahiberat/totalMembers/:username",showMahiberatMemberByMahiberatId);

router.get('/news', showNews);
router.get("/news/:kebele", showNewsByKebele);
router.get('/chat', showMessages);


router.post("/favorite", createFavorite);
router.get('/CPID', showCPID);
router.get("/favorite/:id", showFavoriteByEmail);
router.get('/showedNotification/:email', showShowedNotificationByEmail);

router.get('/orderRestriction/:name/:kebele', showOrderRestrictionById);
router.get('/products/postedForMarket/:kebele/:name', showPostedAmountByKebeleAndName);
router.get('/products/ratingAndFavorite', showProductRateAndFavorite);
router.get('/products/ratingAndFavorite/:email/:id', showProductRateAndFavoriteByUserEmailAndProductId);
router.get('/transactionHistory/:name/:email', showTransactionHistoryByEmailAndProductName);
router.get('/orderRestriction', showOrderRestriction);


// // Get Single Product
router.get('/products/:id', showProductById);
router.get('/products/vModel/:id', showProductByIdforVmodel);


router.post('/products', createProduct);
router.post('/report', createReport);
router.post('/products/ratingAndFavorite', createProductRateAndFavorite);
router.post('/transactionHistory', createTransactionHistory);
router.post('/users', createUser);
router.post('/order', createOrder);
router.post('/addNews', createNews);
router.post('/orderRestriction', createOrderRestriction);
router.post('/showedNotification', saveShowedNotification);
router.post('/chat', createMessage);
router.post('/CPID', createCPID);

router.post('/mahiberat/addNewMembers', createMahiberatMembers);

 
// Update Product
router.put('/products/:id', updateProduct);
router.put('/product/market/:id', rollBackProductFromMarketToStore);
router.put('/products/productsInMarket/:id', updateProductInMarket);
router.put('/products/edit/:id', editProduct);
router.put('/products/cart/:id', updateProductforCartConfirmation);
router.put('/rollBack/:id', rollBackAmountUpdate);
router.put('/rollBack/productsInMarket/:id', rollBackProductAmountInMarketUpdate);
router.put('/order/:id', confirmOrderByOrderId);
router.put('/order/emailAndId/:email/:id', updateOrderByEmailAndProductId);
router.put('/order/payment/:id', updateOrderByOrderIdforPayment);
router.put('/favorite/:id', updateProductRateById);
router.put('/favorite/:id,email', updateProductRateByIdAndEmail);
router.put('/transactionHistory/:name/:email', updateTransactionHistoryByEmailAndProductName);
router.put('/products/:email/:kebele/:name', updateProductByEmailKebeleAndProductName);


router.put('/products/store/market/state/:pid', updateProductByProductIdforMarket);
router.put('/products/store/rejectForMarket/:pid', rejectProductByProductIdforMarket);
router.put('/farmer/product/:pid', updateProductAmountbyProductId);

router.put('/users/profile/:email', updateUserByEmaill);
router.put('/users/:email', updateUserbyEmail);
router.put('/users/email/:email', deActivateUserAccount);
router.put('/users/createAccount/:username', createAccountByUsername);
router.put('/users/changeAccount/:email', updateAccount);
router.put('/order/confirm/:id', updateOrder);
router.put('/showedNotification/:email', updateShowedNotificationByEmail);
router.put('/mahiberat/totalMembers/edit/:id', updateEmployerInformationByUsername);
router.put('/mahiberat/totalMembers/profile/:id', updateEmployerPhotoByUsername);
 
router.delete('/products/:id', deleteProduct);
router.delete('/order/:id', deleteOrder);
router.delete('/users/:id', deleteUser);
router.delete('/news/:id', deleteNew);
router.delete('/users/email/:email', deleteUserbyEmail);
router.delete('/mahiberat/totalMembers/:id', deleteEmployer);
router.delete('/mahiberat/mahiberatMembers/:id', deleteMember);
router.delete('/transaction/History/:id/:kebele', deleteTransactionByIdAndKebele);
router.delete('/orderRestriction/delete/:id/:kebele', deleteOrderRestrictionByIdAndKebele);
router.delete('/order/delete/:id/:kebele', deleteOrderByIdAndKebele);
router.post("/api/pay",handlePayment); 
router.get("/api/verify-payment/:id",verifyPayment);
router.get('/', (req, res) => {
    res.render("index")
})

// router.get("/api/payment-success",paymentSuccess)

router.get("/api/payment-success", async (req, res) => {
console.log("success");

    // res.render("success")
})


// export default router
module.exports = {
    router
};