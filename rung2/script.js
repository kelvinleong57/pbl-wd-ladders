/* global variables */

var imageHeight = 200;
var imageURLs = [];
for(var i = 0; i < 10; i++) {
    imageURLs.push('http://thecatapi.com/api/images/get?image_id='+i.toString()+'sm');
}

/* function calls */

function respondToAddClick() {
	$('#add-btn').click(function() {
		// ask user for a URL and display that in gallery as an image
		var url = prompt("Please enter your URL", "");

		if (url != null) {
			addImageToGallery(url);
		}
	});
}

function respondToResize() {
	$('#bigger-btn').click(function() {
		imageHeight *= 1.1;
		resizeImages();
	});
	$('#smaller-btn').click(function() {
		imageHeight *= 0.9;
		resizeImages();
	});
}

function resizeImages() {
	$('img').each(function() {
		$(this).css('height', imageHeight);
	});
}


function addImageToGallery(url) {
	var img = document.createElement('img');
	$(img).attr('src', url);
	$(img).css('height', imageHeight);
	var a = document.createElement('a');
	$(a).attr('href', 'http://pbl.link/rickroll');
	$(a).append(img);
	$('#gallery').prepend(a);
}

/********* document ready *********/

$(document).ready(function() {
    // create cat image gallery
    for (var i = 0; i < imageURLs.length; i++) {
        addImageToGallery(imageURLs[i]);
    }
    respondToAddClick();
    respondToResize();
});