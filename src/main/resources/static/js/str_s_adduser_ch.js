function sendit()
{
	var f = document.form;
		
		    
   quet = confirm ("저장하시겠습니까?.")
    if (quet==true){
    document.form.action="s_dat_mem_add_in.asp" 	
    document.form.submit();

    }
    
    if (quet==false){
       return false;
       }   
	
}
