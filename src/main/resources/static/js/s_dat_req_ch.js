function sendit()
{
	var f = document.form;
		
	  if(f.str_open_f_dt.value.length == ''){
			alert("������������ �Է� �ϼ���.");
			f.str_open_f_dt.focus();
			return false;
	  }
	  
	  if(f.str_open_t_dt.value.length == ''){
			alert("������������ �Է� �ϼ���.");
			f.str_open_t_dt.focus();
			return false;
		}
						
		var date1 = document.form.str_open_f_dt.value.split("-").join("");
		var date2 = document.form.str_open_t_dt.value.split("-").join("");
		
		var yy = date1.substr(0,4); 
    var mm = date1.substr(4,2); 
    var dd = date1.substr(6,2); 
    
    var yy2 = date2.substr(0,4); 
    var mm2 = date2.substr(4,2); 
    var dd2 = date2.substr(6,2); 


		from_date = new Date(yy,mm,dd); 
    to_date = new Date(yy2,mm2,dd2);	
    
    if (from_date > to_date){
  		 alert("�����ϰ� �����Ϻ��� ũ�� �Է¾ȵ˴ϴ�.");
  		 f.str_open_f_dt.focus();
			 return false;
    }
		    
   quet = confirm ("�����Ͻðڽ��ϱ�?.")
    if (quet==true){
   		 document.form.action="s_dat_req_mail_in.asp" 	
    	document.form.submit();	
    }
    
    if (quet==false){
       return false;
       }   
	
}


function sendit2()
{

   quet = confirm ("�����Ͻðڽ��ϱ�?.")
    if (quet==true){
   		 document.form.action="s_sch_req_mail_in.asp" 	
    	document.form.submit();	
    }
    
    if (quet==false){
       return false;
       }   
	
}