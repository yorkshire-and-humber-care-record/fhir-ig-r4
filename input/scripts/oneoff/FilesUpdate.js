// One off script to update multiple Interweave FSH files (dates/ status etc) 

// Start of one-off script

console.log( "Beginning R4 to STU3 conversion" );

var fs = require('fs');
var path = require('path');
var fileHelpers = require('./FileHelpers');

var dir = path.resolve(__dirname, '..\\..') + '\\fsh';

fileArray= fileHelpers.getAllFiles(dir);
fileArray.forEach(function(filePath) {
var fileData = fs.readFileSync(filePath,'utf8');

var process = false;     

 if(filePath.includes("Interweave")) process = true;

 if(process) {
    fileData = fileData.replaceAll("2024-07-15","2024-07-17")

fs.writeFileSync(filePath, fileData, 'utf8')
 }
 
 });
// end of one-off script
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////