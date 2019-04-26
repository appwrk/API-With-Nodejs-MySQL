'use strict';

var sql = require('./db.js');
var Event = function (event) {
    this.TrackingId = event.TrackingId;
    this.StoreId = event.StoreId;
    this.StoreDomain = event.StoreDomain;
    this.CustomerIPAddress = event.CustomerIPAddress;
    this.EventType = event.EventType;
    this.IsDeleted = event.IsDeleted | false;
    this.EventDate = new Date();
};
exports.getAll = function (result) {
    var query = "SELECT Event.TrackingId, Event.StoreId, Event.StoreDomain, Event.CustomerIPAddress, Event.EventDate, EventTypes.EventTypeName AS EventName, EventTypes.EventAddedDate FROM Event JOIN EventTypes ON Event.EventType = EventTypes.EventTypeId";
    sql.query(query, function (err, res) {
        if (err)
            console.log("Get Event Data : ", err);
        result(err, res);
    })
}
exports.create = function (comm, result) {
    
    console.log(comm);
    var query = "INSERT INTO Event set ?";
    sql.query(query, comm, function (err, res) {
        if (err)
            console.log("Insertion of event", err);
        console.log(res);
        result(null, res.insertId);
    })
}