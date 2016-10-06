jQuery("document").ready(function(){
	
	var user=jQuery.cookie("username");
	var pass=jQuery.cookie("password");
	if(user.length!=0 && pass.length!=0){
		jQuery('#checkbox-signup').attr("checked",true);
	}
	
	jQuery("#userName").val(user);
	jQuery("#password").val(pass);
	

	
    $('input[type="checkbox"]').click(function(){

        if($(this).prop("checked") == true){
        	
        	var username=jQuery("#userName").val();
	    	var password=jQuery("#password").val();
	    	
	    	jQuery.cookie("username",username);
			jQuery.cookie("password",password);

        	
        }

        else if($(this).prop("checked") == false){

        	jQuery.cookie("username","");
			jQuery.cookie("password","");


        }

    });
	   
});