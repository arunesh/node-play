# Demo of how to bundle .js files without webpack

Ignore the webpack.config.js.

- Install babel/env and babel/preset-react to help babel convert JSX and ES6 code.
 
browserify-css to bundle css, such as App.css:
```
 npm install --save-dev browserify-css
 npm install --save-dev @babel/preset-react
 npm install --save-dev @babel/core @babel/cli
 npm install --save-dev @babel/preset-env

./node_modules/.bin/babel src -d lib
```

- Use browserify to bundle any local js modules, ignoring react and react-dom which are directly included in the index.html

```
npm install browserify
npx browserify --external react --external react-dom -t browserify-css lib/*.js src/App.css > public/bundle.js
```
