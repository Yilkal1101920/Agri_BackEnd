// import connection
const DB = require("../config/database.js");

// Insert Report to Database
const insertReport = (data, result) => {
    console.log(data);
    DB.db.query("INSERT INTO report SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

const getReports = (result) => {
    DB.db.query("SELECT * FROM report", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

module.exports = { insertReport, getReports }