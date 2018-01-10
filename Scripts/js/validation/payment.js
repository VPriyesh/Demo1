$(function(){
	
	document.getElementById("receiptdate").innerHTML = new Date().toUTCString();
	$('#receiptDiv').hide();
	$('#placeorder').click(function(event) {
			$("#placeorder").html('Please wait');
			$("#placeorder").attr('disabled', 'disabled');
			setTimeout(explode, 1000);
	});
	
	var explode = function(){
		$('#maindiv').hide();
		alert("Order Created Successfully!!");
		$('#receiptDiv').show();
	};
	
});

function callReceipt(){
	alert(callReceipt)
	
}
