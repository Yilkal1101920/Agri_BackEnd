const { insertProductRateAndFavorite, getProductRateAndFavorite, getProductRateAndFavoriteByUserEmailAndProductId } = require("../models/productRatingAndFavoriteData.js");

// Create New Product
 const createProductRateAndFavorite = (req, res) => {
    const data = req.body;
    insertProductRateAndFavorite(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showProductRateAndFavoriteByUserEmailAndProductId = async (req, res) => {
    getProductRateAndFavoriteByUserEmailAndProductId(req.params.email, req.params.id, (err, results) => {
        if (err){
            res.send(err);
            console.log(err)

        }else{
            console.log(results)
            console.log(req.params.email + req.params.id);
            res.json(results);
        }
    });
}

const showProductRateAndFavorite = async (req, res) => {

    
    getProductRateAndFavorite((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

module.exports={
    createProductRateAndFavorite, showProductRateAndFavorite, showProductRateAndFavoriteByUserEmailAndProductId
}