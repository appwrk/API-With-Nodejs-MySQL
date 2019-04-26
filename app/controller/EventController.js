'use strict'

var event = require('../model/EventModel');

exports.getAll = function (req, res) {
    event.getAll(function (err, result) {
        if (err)
            res.send(err);
        res.send(result);
    })
}

exports.create = function (req, res) {
    console.log("Event Request", req);
    event.create(req.body, function (err, result) {
        if (err)
            res.send(err);
        res.json(result);
    })
}
