'use strict'

var stu = require('../model/EventTypeModel');

exports.getAll = function (req, res) {
    stu.getAll(function (err, result) {
        if (err)
            res.send(err);
        res.send(result);
    })
}

exports.create = function (req, res) {
    console.log("Request", req);
    stu.create(req.body, function (err, result) {
        if (err)
            res.send(err);
        res.json(result);
    })
}
