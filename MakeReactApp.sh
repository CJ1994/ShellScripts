#!/bin/bash
ProjectName=$1

echo Checking if project directory exists... 
if [ ! -d "$ProjectName" ]; then 
	echo Could not find the project directory... Making directory 
	mkdir $ProjectName
	echo Switching context to project directory... 
	cd $ProjectName
else
	echo Switching to project directory...
	cd $ProjectName 
fi 

echo Initilizing NPM
npm init -y

echo Making Source Directory 
mkdir src 
 
echo Creating babelrc file 
cat >.babelrc <<EOL
{
  "plugins": ["react-hot-loader/babel", ["transform-runtime", {
    "polyfill": false,
    "regenerator": true
  }]],
  "presets": ["env", "react"]
}
EOL

echo Creating Template index.html 
cat >src/index.html <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>ReactApp</title>
</head>
<body>
  <section id="index"></section>
</body>
</html>
EOL

echo Creating Template index.js 
cat >src/index.js <<EOL 
console.log('I will be made into an awesome React app someday!');
EOL

echo Installing Webpack and Dev Dependencies
npm i webpack webpack-cli -D 


echo Installing React and Babel 
npm i react react-dom -S
npm i babel-core babel-loader babel-preset-env babel-preset-react -D

echo Installing Webpack Plugin 
npm i html-webpack-plugin -D
npm i webpack-dev-server -D

echo Installing Storybook 
npm i -g @storybook/cli
getstorybook

echo Adding Internationalization Support 
yarn add react-intl  

echo Adding Material UI 
yarn add material-ui@next
yarn add @material-ui/icons 

echo Adding redux 
yarn add react-redux
yarn add redux-devtools -D
yarn add immutable
yarn add redux-immutable
yarn add reselect

echo Adding LoDash
yarn add lodash

echo Adding Sagas 
yarn add redux-saga 
yarn add react-hot-loader
yarn add babel-runtime
yarn add babel-plugin-transform-runtime -D

echo Adding WhatWg 
yarn add whatwg-fetch 


