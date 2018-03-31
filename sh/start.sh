#!/bin/bash
set -ex

./node_modules/.bin/elm-package install --yes
npm run webpack

node server.js