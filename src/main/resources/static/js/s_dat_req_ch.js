function sendit()
{
	var f = document.form;
		
	  if(f.str_open_f_dt.value.length == ''){
			alert("열람시작일을 입력 하세요.");
			f.str_open_f_dt.focus();
			return false;
	  }
	  
	  if(f.str_open_t_dt.value.length == ''){
			alert("열람종료일을 입력 하세요.");
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
  		 alert("시작일과 종료일보다 크게 입력안됩니다.");
  		 f.str_open_f_dt.focus();
			 return false;
    }
		    
   quet = confirm ("저장하시겠습니까?.")
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

   quet = confirm ("저장하시겠습니까?.")
    if (quet==true){
   		 document.form.action="s_sch_req_mail_in.asp" 	
    	document.form.submit();	
    }
    
    if (quet==false){
       return false;
       }   
	
}