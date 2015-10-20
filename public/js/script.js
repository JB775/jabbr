$(document).ready(function(){


	$('.signup').submit(function () {

	    // Get the Username value and trim it
	    var username = $.trim($('.username').val());
	    // Get the Password values and trim them
	    var password1 = $.trim($('.password1').val());
	    var password2 = $.trim($('.password2').val());

	    // Check if empty of not
	    if (username === '' || password1 === '' || password2 === '') {
	        
	        alert('Please Complete All Fields');
	        return false;
	    } else if (password1 !== password2) {
			//make sure both entered passwords match
	    	alert('Passwords Do Not Match');
	    	return false;
	    
	    } else {
	    	
	    var data = "password=" + encodeURIComponent($('.password').val());

		$.ajax({
		  url: '/newsignin',
		  data: data,
		  type: 'post'
		})
		.done(function(response) {
		  // Do something with the response
		})
		.fail(function(error) {
		  // Do something with the error
		});


	    } 
	});





});

