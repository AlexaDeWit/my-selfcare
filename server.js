var express = require('express');
var app = express();

app.use(express.static('dist'));

app.get("*", function(req, resp) {
  response.sendFile(__dirname + '/dist/index.html')
});

//listen on port
var listener = app.listen(process.env.PORT || 3000, function() {
  console.log(`now listening on port: ${listener.address().port}`);
});
