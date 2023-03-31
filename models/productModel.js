// import connection
const DB = require("../config/database.js");
 
// Get All Products
 const getProducts = (result) => {
    DB.db.query("SELECT * FROM agri_product", (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getCPID = (result) => {
    DB.db.query("SELECT * FROM cpidtable", (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

// Get All Products
 const getProductsWithFavorate = (result) => {
    DB.db.query("SELECT * FROM agri_product LEFT JOIN favorite on agri_product.product_id = favorite.fproduct_id", (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

 const getOrdersByEmail = (result) => {
    DB.db.query("SELECT * FROM ordertable", (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getOrderByEmailProductId = (email, id, result) => {
    DB.db.query("SELECT * FROM ordertable WHERE user_email = ? AND product_id = ?", [email, id], (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });   
}

const getOrderByEmailProductIdPaymentStatus = (email, id, payment, result) => {
    DB.db.query("SELECT * FROM ordertable WHERE user_email = ? AND product_id = ? AND payStatus = ?", [email, id, payment], (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });   
}

 const getOrderWithSelect = (result) => {
    DB.db.query("SELECT * FROM ordertable INNER JOIN agri_product ON ordertable.product_id = agri_product.product_id INNER JOIN users ON ordertable.user_email = users.email", (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


const getOrderedProducts = (result) => {
    DB.db.query("SELECT * FROM ordertable INNER JOIN agri_product ON ordertable.product_id = agri_product.product_id", (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
 
// Get Single Product
 const getProductById = (id, result) => {
   DB.db.query("SELECT * FROM agri_product WHERE product_id = ?", [id], (err, results) => {             
        if(err) {
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });   
}


 const getProductRateById = (id, result) => {

    DB.db.query("SELECT * FROM favorite WHERE favorite_id = ?", [id], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }

 const getProductRateByIdd = (id, result) => {
    DB.db.query("SELECT * FROM favorite WHERE fproduct_id = ?", [id], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }


 const getProductRateByIdAndEmail = (id, email, result) => {

    DB.db.query("SELECT * FROM favorite WHERE fproduct_id = ? AND email = ?", [id], [email], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }

 const getProductByIdforVmodel = (id, result) => {
    DB.db.query("SELECT * FROM agri_product WHERE product_id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });   
}
 
 const getOrderByOrderId = (id, result) => {
    DB.db.query("SELECT * FROM ordertable WHERE order_id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });   
}

// Insert Product to Database
 const insertProduct = (data, result) => {
    
    DB.db.query("INSERT INTO agri_product SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

 const insertFavorite = (data, result) => {
    DB.db.query("INSERT INTO favorite SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const insertCPID = (data, result) => {
    DB.db.query("INSERT INTO cpidtable SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


 const getFavoriteByEmail = (id, result) => {
    DB.db.query("SELECT * FROM favorite WHERE email = ?", [id], (err, results) => {             
         if(err) {
             console.log(err);
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }
 
 const getPostedAmountByKebeleAndName = (kebele, name, result) => {
    DB.db.query("SELECT * FROM agri_product WHERE kebele = ? AND title = ?", [kebele, name], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     });   
 }

// Insert order to Database
 const insertOrder = (data, result) => {
    DB.db.query("INSERT INTO ordertable SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

// Update Product to Database
 const updateProductById = (data, id, result) => {
    DB.db.query("UPDATE agri_product SET amount = ?, state = ? WHERE product_id = ?", [data.amount, data.state, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const rollBackProductInToStore = (data, id, result) => {
    DB.db.query("UPDATE agri_product SET postedForMarket = ?, marketState = ? WHERE product_id = ?", [data.postedForMarket, data.marketState, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const updateProductInMarketById = (data, id, result) => {
    DB.db.query("UPDATE agri_product SET postedForMarket = ?, state = ? WHERE product_id = ?", [data.postedForMarket, data.state, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const updateOrderById = (data, id, result) => {
    DB.db.query("UPDATE ordertable SET nOrders = ? WHERE order_id = ?", [data.nOrders, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


// Update Product Rate by Product Id
 const updateProductRateByProductId = (data, id, result) => {
    DB.db.query("UPDATE favorite SET favorite_no = ? WHERE favorite_id = ?", [data.favorite_no, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


const updateProductRateByProductIdAndEmail = (data, id, email, result) => {
    DB.db.query("UPDATE favorite SET favorite_no = ? WHERE fproduct_id = ? AND email = ?", [data.favorite_no, id, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const updateOrderByProductIdAndEmail = (data, email, id, result) => {
    DB.db.query("UPDATE ordertable SET nOrders = ?, edited_date = ? WHERE user_email = ? AND product_id = ? AND payStatus = ?", [data.nOrders, data.edited_date, email, id, 0], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


 const updateOrderByOrderId = (data, id, result) => {
    DB.db.query("UPDATE ordertable SET confirm = ?, confir = ?, cancel = ? WHERE order_id = ?", [data.confirm, data.confir, data.cancel, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


const updateOrderforPayment = (data, id, result) => {
    DB.db.query("UPDATE ordertable SET confirm = ?, confir = ?, payStatus = ? WHERE order_id = ?", [data.confirm, data.confir, data.payStatus, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

// Update Product to Database
 const updateProductByIdforCartConfirmation = (data, id, result) => {
    DB.db.query("UPDATE agri_product SET state = ? WHERE product_id = ?", [data.state, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

 const rollBackAmount = (data, id, result) => {
    DB.db.query("UPDATE agri_product SET amount = ?, state = ? WHERE product_id = ?", [data.amount, data.state, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const rollBackProductAmountInMarket = (data, id, result) => {
    DB.db.query("UPDATE agri_product SET postedForMarket = ?, state = ? WHERE product_id = ?", [data.postedForMarket, data.state, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

 const editProductById = (data, id, result) => {
    DB.db.query("UPDATE agri_product SET category = ?, type_product = ?, title = ?, price = ?, original_cost = ?, amount = ?, address = ?, image = ?  Where product_id = ?", [data.category, data.type_product, data.title, data.price, data.original_cost, data.amount, data.address, data.image, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            console.log(results)
            result(null, results);
        }
    });   
}


const rejectProductforMarketByProductId = (data, pid, result) => {
    DB.db.query("UPDATE agri_product SET postedForMarket = ?  Where product_id = ?", [data.postedForMarket, pid], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            console.log(results)
            result(null, results);
        }
    });   
}

const editProductByProductIdforMarket = (data, pid, result) => {
    DB.db.query("UPDATE agri_product SET marketState = ?  Where product_id = ?", [data.marketState, pid], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            console.log(results)
            result(null, results);
        }
    });   
}


const updateProductAmountByProductId = (data, pid, result) => {
    DB.db.query("UPDATE agri_product SET amount = ?  Where product_id = ?", [data.amount, pid], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            console.log(results)
            result(null, results);
        }
    });   
}


const updateProductByEmailProducNameAndKebele = (data, email, kebele, name, result) => {
    DB.db.query("UPDATE agri_product SET postedForMarket = ?  Where post_email = ? AND kebele = ? AND title = ?", [data.postedForMarket, email, kebele, name], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

// Delete Product to Database
 const deleteProductById = (id, result) => {
    DB.db.query("DELETE FROM agri_product WHERE product_id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}



const deleteOrderById = (id, result) => {
    DB.db.query("DELETE FROM ordertable WHERE order_id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const deleteOrderByKebeleAndId = (id, kebele, result) => {
    DB.db.query("DELETE FROM ordertable WHERE product_id = ? AND order_kebele = ?", [id, kebele], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

 const deleteUserById = (id, result) => {
    DB.db.query("DELETE FROM users WHERE user_id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports={
    getProducts, getOrderedProducts, getProductsWithFavorate, getOrdersByEmail, getOrderByEmailProductId, getOrderByEmailProductIdPaymentStatus, getOrderWithSelect, getCPID,
    getProductById, getProductRateById, getProductRateByIdd, getProductRateByIdAndEmail, getProductByIdforVmodel, getOrderByOrderId, getPostedAmountByKebeleAndName, 
    insertProduct, insertFavorite, insertCPID, getFavoriteByEmail, insertOrder, updateProductById, rollBackProductInToStore, updateProductInMarketById,
    updateProductRateByProductId, updateProductRateByProductIdAndEmail, updateOrderByProductIdAndEmail, updateOrderByOrderId, updateOrderforPayment, 
    updateProductByIdforCartConfirmation, rollBackAmount, rollBackProductAmountInMarket, editProductById, updateOrderById, updateProductByEmailProducNameAndKebele,
    editProductByProductIdforMarket, rejectProductforMarketByProductId, updateProductAmountByProductId, 
    deleteProductById, deleteUserById, deleteOrderById, deleteOrderByKebeleAndId,
}
