function sendit()
{
	var f = document.form;
		
		    
   quet = confirm ("�����Ͻðڽ��ϱ�?.")
    if (quet==true){
    document.form.action="s_dat_mem_add_in.asp" 	
    document.form.submit();

    }
    
    if (quet==false){
       return false;
       }   
	
}
