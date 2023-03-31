// Import function from user Model
const { insertUser, activateAccountByUsername, getUsers, getUserByEmail, getUserByEmailAndPassword, getUserByMahiberatId, updateUserInfoByEmaill, updateUserInfobyEmail, changeAccount, deActivateMahiberatUserAccount, deleteUserByEmail} = require("../models/userData.js");
// Create New User
 const createUser = (req, res) => {
    const data = req.body;
    insertUser(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const createAccountByUsername = (req, res) => {
    const data = req.body;
    const username = req.params.username;
    activateAccountByUsername(data, username, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
 const showUsers = async (req, res) => {
    
    getUsers((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}


const showUserByEmail = (req, res) => {
    getUserByEmail(req.params.email, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showUserByEmailAndPassword = (req, res) => {
    getUserByEmailAndPassword(req.params.email, req.params.password, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const showUserByMahiberatId = (req, res) => {
    getUserByMahiberatId(req.params.id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateUserByEmaill = (req, res) => {
    const data  = req.body;
    const email    = req.params.email;
    updateUserInfoByEmaill(data, email, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateUserbyEmail = (req, res) => {
    const data  = req.body;
    const id    = req.params.email;
    updateUserInfobyEmail(data, id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const updateAccount = (req, res) => {
    const data  = req.body;
    const email    = req.params.email;
    changeAccount(data, email, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deActivateUserAccount = (req, res) => {
    const data  = req.body;
    const email    = req.params.email;
    deActivateMahiberatUserAccount(data, email, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

const deleteUserbyEmail = (req, res) => {
    const email = req.params.email;
    deleteUserByEmail(email, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}
module.exports={
    createUser, createAccountByUsername, showUsers, showUserByEmail, showUserByEmailAndPassword, showUserByMahiberatId, updateUserByEmaill, updateUserbyEmail, updateAccount,
    deActivateUserAccount, deleteUserbyEmail
}