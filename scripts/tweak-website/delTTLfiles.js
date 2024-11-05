#!/usr/bin/env node

//*******************************************************************
//** This script tweaks the website, 
//   Specifically to delete all ttl.html files as they are not displayed in the front end
//*******************************************************************

// (For useful help, see https://www.w3schools.com/js/js_htmldom_collections.asp)

console.log( "Starting to delete TTL files" );

var fs = require('fs');
var path = require('path');
const jsdom = require("jsdom");
var fileHelpers = require('./FileHelpers');
const { JSDOM } = jsdom;

var dirOutput = path.resolve(__dirname, '..\\..') + '\\output';
//console.log(dirOutput);


// // ////////////////////////////////////////
// // // Update History page with a link to STU3
// // ////////////////////////////////////////

fileArrayOutput = fileHelpers.getAllFiles(dirOutput);
var i = 1;
fileArrayOutput.forEach(function(filePathOutput) { 
  if(filePathOutput.includes("ttl.html")){ 
    i = i+1; 
    fs.unlinkSync(filePathOutput);      
}
});

console.log('Deleted ' + i + ' files.');
// fileArrayOutput = fileHelpers.getAllFiles(dirOutput);
// fileArrayOutput.forEach(function(filePathOutput) { 

// if(path.extname(filePathOutput) === '.html'){ 
//   if(filePathOutput.includes("CodeSystem-Interweave")) {

//   var data = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Extension-Interweave")) {

//   var data = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Interweave-A")) {

//   var data3 = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data3 , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Interweave-C")) {

//   var data = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Interweave-D")) {

//   var data = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Interweave-E")) {

//   var data = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Interweave-F")) {

//   var data = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Interweave-H")) {

//   var data = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Interweave-O")) {

//   var data1 = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data1 , 'utf8');
//  }
//  else if(filePathOutput.includes("StructureDefinition-Interweave-M")) {

//   var data2 = updatePublishBox(filePathOutput);
  
//   fs.writeFileSync(filePathOutput, data2 , 'utf8');
//  }
//  }})

//  function updatePublishBox(filePath){
//   var fileData = fs.readFileSync(filePath,'utf8');
//   const domfileData = new JSDOM(fileData);

//   var processContent = true;      
      
//   if(filePath.includes("STU3")) processContent = false;

//   if(processContent) {
//     if(domfileData.window.document.getElementById("publish-box")){    
//     domfileData.window.document.getElementById("publish-box").style.display = "none";    
//   }
//   }
//   return domfileData.window.document.documentElement.outerHTML;
//  }

//  console.log("website tweaks done");



//  //   && (filePathOutput.match(/\./g)|| []).length === 1 
//  //  && (filePathOutput.match(/UKCore/g)|| []).length === 0
// //   && (filePathOutput.match(/-mappings/g)|| []).length === 0
// //   && (filePathOutput.match(/-testing/g)|| []).length === 0
// //   && (filePathOutput.match(/-examples/g)|| []).length === 0
// //   && (filePathOutput.match(/-definitions/g)|| []).length === 0
// //   //&& (filePathOutput.match(/Location/g)|| []).length === 1
 
// //   //console.log(filePathOutput);
// //   //console.log((filePathOutput.match(/\./g)|| []).length);