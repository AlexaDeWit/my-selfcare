'use strict';

require('ace-css/css/ace.css');
require('font-awesome/css/font-awesome.css');

// Require index.html so it gets copied to dist
require('../html/index.html');
const Elm = require('../elm/Main.elm');
const mountNode = document.getElementById('main');
const app = Elm.Main.embed(mountNode);

//Ports
const localStoragePorts = require("elm-local-storage-ports");

localStoragePorts.register(app.ports);
