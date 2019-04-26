'use strict';
module.exports = function (app) {
    var eventType = require('../controller/EventTypeController');
    var event = require('../controller/EventController');

    app.route('/').get(function (req, res) {
    });
    app.route('/eventType')
        .post(eventType.create)
    app.route('/event')
        .get(event.getAll)
        .post(event.create)

};