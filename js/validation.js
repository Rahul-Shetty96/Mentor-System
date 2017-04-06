$(document).ready(function() {	

	$("#adminlogin").validate({

	rules: {

		mentor_name:{
			required : true,
			two_words : true
		},

		mentor_email:{
			email : true,
			required : true
		},

		mentor_pwd:{
			required:true,
			minlength:7
		},
	},

	messages:{

		mentor_name:{
			required : "Please enter name",
		},

		mentor_email:{
			email : "Please Enter a valid email",
			required : "Please enter an email"
		},

		mentor_pwd:{
			required:"Please enter a password",
			minlength:"Password should be atleast seven characters"
		},


},

  submitHandler: function(){
  	add_mentor();
  },

highlight: function(element) {
    $(element).closest('.form-group').addClass('has-error');
},
unhighlight: function(element) {
    $(element).closest('.form-group').removeClass('has-error');
},
		
errorElement: 'span',
errorClass: 'help-block',
errorPlacement: function(error, element) {

    if(element.parent('.input-group').length) {
        error.insertAfter(element.parent());
    } else {
        error.insertAfter(element);
    }
   }    


});
   
 
   
});

$.validator.addMethod('two_words',
                 function(value){
					                 return /\w+\s+\w+/.test(value);
				 },
				 "Enter first and last name"
);
