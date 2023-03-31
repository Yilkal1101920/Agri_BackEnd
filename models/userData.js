// import connection
const DB = require("../config/database.js");
const bcrypt = require('bcrypt');
const hash = require("object-hash");
 
// Insert user to Database
 const insertUser = async(data, result) => {
     try{
        var hashPassword = data.password;
        hashPassword = hash.MD5(data.password);
    
        data.password = hashPassword;
    DB.db.query("INSERT INTO users SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
     }catch(err){
console.log(err);
 }
 }
 const getUsers = (result) => {
    DB.db.query("SELECT * FROM users", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getUserByEmail = (email, result) => {
    DB.db.query("SELECT * FROM users WHERE email = ?", [email], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     }); 
 }

 const getUserByEmailAndPassword = (email, password, result) => {

    DB.db.query("SELECT * FROM users WHERE email = ?", [email],async (err, results) => {  
        
      const ad= await bcrypt.compare(password,results[0].password)
console.log("ad",ad);

         if(err) {
             result(err, null);
             console.log(err);
         } else {
            console.log("password",password);
            console.log("results");
            console.log(results[0].password);
            bcrypt.compare(password,results[0].password).then((match)=>{
                if(match){
                    console.log("check");
                    console.log(results[0]);

                }
                else{
                    console.log("wait");

                }
            })
          
             result(null, results[0]);
         }
     }); 
 }


 const getUserByMahiberatId = (id, result) => {
    DB.db.query("SELECT * FROM users WHERE username = ?", [id], (err, results) => {             
         if(err) {
             result(err, null);
         } else {
             result(null, results[0]);
         }
     }); 
 }

const updateUserInfoByEmaill = (data, email, result) => {
    DB.db.query("UPDATE users SET subKebele = ?, village = ?, phone = ? Where email = ?", [data.subKebele, data.village, data.phone, data.email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const updateUserInfobyEmail = (data, email, result) => {
    DB.db.query("UPDATE users SET active = ? Where email = ?", [data.active, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const changeAccount = (data, email, result) => {
    var hashPassword = data.password;
    hashPassword = hash.MD5(data.password);

    data.password = hashPassword;
    DB.db.query("UPDATE users SET email = ?, password = ? Where email = ?", [data.email, data.password, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const activateAccountByUsername = (data, username, result) => {

    var hashPassword = data.password;
    hashPassword = hash.MD5(data.password);

    data.password = hashPassword;

    DB.db.query("UPDATE users SET email = ?, password = ?, user_state = ? Where username = ?", [data.email, data.password, data.user_state, username], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const deActivateMahiberatUserAccount = (data, email, result) => {

    DB.db.query("UPDATE users SET user_state = ? Where email = ?", [data.user_state, email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const deleteUserByEmail = (email, result) => {
    DB.db.query("DELETE FROM users WHERE email = ?", [email], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
module.exports={insertUser, activateAccountByUsername, getUsers, getUserByEmail, getUserByEmailAndPassword, getUserByMahiberatId, updateUserInfoByEmaill, updateUserInfobyEmail, changeAccount,
    deActivateMahiberatUserAccount, deleteUserByEmail}