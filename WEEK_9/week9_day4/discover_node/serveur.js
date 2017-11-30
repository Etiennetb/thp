var http = require('http');
var monmodule = require('./monmodule');
var markdown = require('markdown').markdown;


var server = http.createServer(function(req, res) {
  res.writeHead(200);
  res.end('Salut tout le monde !');
});

server.on('listen', function() { // On écoute l'évènement close
    console.log('Bye bye !');
})

server.listen(8080); // Démarre le serveur

monmodule.direBonjour(); //monmodule
monmodule.direByeBye();

console.log(markdown.toHTML('Un paragraphe en **markdown** !'));