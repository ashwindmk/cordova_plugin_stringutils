var exec = require('cordova/exec');

module.exports.isBlank = function (input, success, error) {
    exec(success, error, 'Stringutils', 'isBlank', [input]);
};

module.exports.isEmpty = function (input, success, error) {
    exec(success, error, 'Stringutils', 'isEmpty', [input]);
};
