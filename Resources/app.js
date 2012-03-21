// app.js
// Create a window
var myWindow = Titanium.UI.createWindow({fullscreen:false});
// Create the table view -- it's a collection of various beverages
//var myData = [{title:'Coffee'}, {title:'Tea'}, {title:'Juice'}, {title:'Ice water'}];

var myTableView = Titanium.UI.createTableView();

var url = "http://news.ycombinator.com/rss";
var items = Titanium.XML.NodeList;
var client = Ti.Network.createHTTPClient({
     // function called when the response data is available
     onload : function(e) {
         //alert("Received text: " + this.responseText);
         var feed = Ti.XML.parseString(this.responseText);
         items = feed.getElementsByTagName("item");
         
 
		// Create one more row, and append it to the TableView
		for(var i = 0; i < items.getLength(); i++) {
			var myRow = Titanium.UI.createTableViewRow();
			myRow.title = items.item(i).getChildNodes("title").item(0).text;
			
			myTableView.appendRow(myRow);
		}
         
         alert('success');
     },
     // function called when an error occurs, including a timeout
     onerror : function(e) {
         Ti.API.debug(e.error);
         alert('error');
     },
     timeout : 5000  /* in milliseconds */
 });
 // Prepare the connection.
 client.open("GET", url);
 // Send the request.
 client.send();

// Add an event listener to respond to clicks in the TableView
myTableView.addEventListener('click', function(e) {
// Report which item was clicked
Titanium.Platform.openURL(items.item(e.index).getChildNodes("url").item(1).text);
/*Titanium.UI.createAlertDialog({
title:'Alert',
message:('Click at index: '+items.item(e.index).getChildNodes("url").item(1).text)
}).show();*/
});
// Add the table to the window
myWindow.add(myTableView);
myWindow.open();