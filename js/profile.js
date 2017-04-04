$(function(){

	$(".error").hide();
	$("#logoutbtn").css('display','block');
	display_meets();
	
	$( "#datepicker" ).datepicker({ minDate:2, maxDate: "+1M" });
    $( "#datepicker" ).datepicker( "option", "showAnim", "slideDown" );

});

var s = window.location.href;
var email = s.substring(s.lastIndexOf("=")+1);

function display_meets(){

	
	$.ajax({
		url : "../php/next_meet.php",
		async : false,
		type : "POST",
		data : {
			"email" : email
		},
		success : function(d){
			$("tbody").replaceWith(d);
		}
	});
}


function submit_issue(){

	if($('textarea').val() == "")
	{
			$(".error").fadeIn("slow");
			
			setTimeout(
	    	function()
	    	{
	    		$(".error").fadeOut();	
	        },3000);
	}
	else
    {
			$.ajax({
				url : "../php/insert_issue.php",
				async : false,
				type : "POST",
				data : {
					"email" : email,
					"issue" : $("textarea").val()
				},
				success : function(d){
					
					$("#modal_text").text(d);
		    		$('#myModal').modal('show');
		    		$('textarea').val("");        
		    		setTimeout(
		    			function()
		    			{
		    				$('#myModal').modal('hide');
		                },3000);
				}

			});

			display_meets();
	}
}


function next_meet()
{
	var date = $('.date').val();
	var y = date.substring(date.lastIndexOf("/")+1);
	var d = date.substring(date.indexOf("/")+1,date.lastIndexOf("/"));
	var m = date.substring(0,date.indexOf("/"));
	var date = y+"-"+m+"-"+d;


	$.ajax({
				url : "../php/date_insert.php",
				async : false,
				type : "POST",
				data : {
					"email" : email,
					"date" : date
				},
				success : function(d){
					
					$("#modal_text").text(d);
		    		$('#myModal').modal('show');
		    		setTimeout(
		    			function()
		    			{
		    				$('#myModal').modal('hide');
		                },3000);
				}

			});
}