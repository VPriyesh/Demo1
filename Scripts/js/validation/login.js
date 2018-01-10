/**
 * 
 */

$(function(){

    $("#loginForm").validate({
        rules: {
            uName: {
            	required: true,
            	minlength: 2
            },
            password: {
                required: true,
                minlength: 2
            }
        },
        
        messages: {
            uName: {
            	required: "Please enter a username",
            	minlength: "Username must be at least 2 characters"
            },
            password: {
                required: "Please choose a password",
                minlength: "Password must be at least 2 characters"
            }
        },
        errorLabelContainer: ".messageBox",
        wrapper: "li",
        invalidHandler: function(event, validator) {
            // 'this' refers to the form
            var errors = validator.numberOfInvalids();
            if (errors) {
              $("div.messageBox").show();
            } else {
            	$("div.messageBox").hide();
            }
        },
        submitHandler: function(form) {
            form.submit();
        }
    });
    
    
    $('#showregdiv').click(function(event) {
    	 $('#myModelLabel').html("Create User");
    	 $('#myModel').modal({
    		  transition: 'toggle',
    		  horizontal: 'center' // optional
    		});
    	 
    });
});
