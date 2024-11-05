#!/usr/bin/env node

//*******************************************************************
//** This script tweaks the website, 
//   Specifically to hide all the UKCore artefacts from the contents so they don't clutter it up
//*******************************************************************

// (For useful help, see https://www.w3schools.com/js/js_htmldom_collections.asp)

console.log( "Beginning website tweaks" );

var fs = require('fs');
var path = require('path');
const jsdom = require("jsdom");
var fileHelpers = require('./FileHelpers');
const { JSDOM } = jsdom;

var dirOutput = path.resolve(__dirname, '..\\..') + '\\output';
//console.log(dirOutput);
var fileArtifacts = dirOutput + '\\artifacts.html';
var fileToc = dirOutput + '\\toc.html';

///////////////////////////////////////////////////////////////////////////////
//Read in the artifacts file
var fileArtifactsData = fs.readFileSync(fileArtifacts,'utf8');
const domArtifacts = new JSDOM(fileArtifactsData);

// Hide any table rows that refer to UK Core
artifactsTrElements = domArtifacts.window.document.getElementsByTagName("tr");
for (let i = 0; i < artifactsTrElements.length; i++) {
  
  if(artifactsTrElements[i].innerHTML.includes("UKCore") || artifactsTrElements[i].innerHTML.includes("Extensioncodingsctdescid")) {
    //console.log(artifactsTrElements[i].innerHTML);
    artifactsTrElements[i].style.display = "none";
  } // If UKCore

} //For tr elements

// Re-write the updated artifacts file
fs.writeFileSync(fileArtifacts, domArtifacts.window.document.documentElement.outerHTML, 'utf8');


///////////////////////////////////////////////////////////////////////////////
//Read in the toc file
var fileTocData = fs.readFileSync(fileToc,'utf8');
const domToc = new JSDOM(fileTocData);

// Hide any table rows that refer to UKCore
tocTrElements = domToc.window.document.getElementsByTagName("tr");
for (let i = 0; i < tocTrElements.length; i++) {

  if(tocTrElements[i].innerHTML.includes("UKCore") || tocTrElements[i].innerHTML.includes("Extensioncodingsctdescid")) {
    //console.log(tocTrElements[i].innerHTML);
    tocTrElements[i].style.display = "none";
  } // If UKCore


} //For tr elements

// Re-write the updated ToC file
fs.writeFileSync(fileToc, domToc.window.document.documentElement.outerHTML, 'utf8');

// // ////////////////////////////////////////
// // // Update History page with a link to STU3
// // ////////////////////////////////////////

// fileArrayOutput1 = fileHelpers.getAllFiles(dirOutput);
// fileArrayOutput1.forEach(function(filePathOutput1) { 

//   if(filePathOutput1.includes("ttl.html")){ 
    
//           console.log(filePathOutput1 + ' File exists. Deleting now ...');
//           fs.unlinkSync(filePathOutput1);
      
// }
// });     

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