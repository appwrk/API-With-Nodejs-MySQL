'use strict';

var sql = require('./db.js');
exports.create = function (comm, result) {
    
    console.log(comm);
    var query = "INSERT INTO EventTypes set ?";
    sql.query(query, comm, function (err, res) {
        if (err)
            console.log("Insertion of EventTypes : ", err);
        console.log(res);
        result(null, res.insertId);
    })
}