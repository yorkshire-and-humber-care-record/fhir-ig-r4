#!/usr/bin/env node

//*******************************************************************
//** This script tweaks the website to add link to STU3 page 
//*******************************************************************

// (For useful help, see https://www.w3schools.com/js/js_htmldom_collections.asp)

var fs = require('fs');
var path = require('path');
var fileHelpers = require('./FileHelpers');

var dirOutput = path.resolve(__dirname, '..\\..') + '\\output';

// // ////////////////////////////////////////
// // // Update History page with a link to STU3
// // ////////////////////////////////////////

 fileArrayOutput = fileHelpers.getAllFiles(dirOutput);
 fileArrayOutput.forEach(function(filePathOutput) {  

 if(path.extname(filePathOutput) === '.html'){ 
 if(filePathOutput.includes("CodeSystem-Interweave")) {

   var data = fileHelpers.updatePublishBox(filePathOutput);  
   fs.writeFileSync(filePathOutput, data , 'utf8');
  }
 }
 });