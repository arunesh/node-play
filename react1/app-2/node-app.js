// NodeJs entry point
//

var express = require('express');
var app = express();

app.use(express.static('public'));

app.set('port', process.env.PORT || 3000);

var server = app.listen(app.get('port'), function() {
    console.log( 'server is running on port ' + app.get('port'));
});
