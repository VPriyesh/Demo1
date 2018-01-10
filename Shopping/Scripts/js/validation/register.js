/**
 * 
 */
$(function(){

    $("#registerForm").validate({
        rules: {
            fName: "required",
            lName: "required",
            address: "required",
            state: "required",
            zip: {
            	required: true,
            	minlength: 2,
            	number: true
            },
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
            fName: "Please enter your First Name",
            lName: "Please enter your Last Name",
            address: "Please enter your street",
            state: "Please enter your State",
            zip: {
            	required: "Please enter your Zipcode",
            	minlength: "Zipcode is at least 2 characters",
            	number: "Zipcode must be a number"
            },
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
});


