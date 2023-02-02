#!/bin/zsh


echo ./node_modules/.bin/babel src -d lib
./node_modules/.bin/babel src -d lib

echo npx browserify lib/*.js src/App.css > public/bundle.js
npx browserify --external react --external react-dom -t browserify-css lib/*.js src/App.css > public/bundle.js
