function sendit()
{
	var f = document.form;
		
	  if(f.str_s_title.value.length == ''){
			alert("�н������� �Է� �ϼ���.");
			f.str_d_title.focus();
			return false;
		}
		
	  if(f.str_sch_dt.value.length == ''){
			alert("�н���ȹ���� �Է� �ϼ���.");
			f.str_sch_dt.focus();
			return false;
		}
						
		if(f.str_s_kind.value.length == ''){
			alert("�з��� ���� �ϼ���.");
			f.str_s_kind.focus();
			return false;
		}
		
		
		if(f.leader_nm.value.length == ''){
			alert("�н� �����ڸ�  �Է� �ϼ���.");
			f.leader_nm.focus();
			return false;
		}
		
		if(f.s_loc.value.length == ''){
			alert("�н� ��Ҹ�  �Է� �ϼ���.");
			f.s_loc.focus();
			return false;
		}	

		if(f.f_hour.value.length == ''){
			alert("�н� ���۽ð�  �Է� �ϼ���.");
			f.f_hour.focus();
			return false;
		}			

		if(f.f_min.value.length == ''){
			alert("�н� ���ۺ���  �Է� �ϼ���.");
			f.f_min.focus();
			return false;
		}	

		if(f.t_hour.value.length == ''){
			alert("�н� ����ð���  �Է� �ϼ���.");
			f.t_hour.focus();
			return false;
		}	
		
		if(f.t_min.value.length == ''){
			alert("�н� ������� �Է� �ϼ���.");
			f.t_min.focus();
			return false;
		}							
		    
   quet = confirm ("�����Ͻðڽ��ϱ�?.")
    if (quet==true){
				File.Upload();

    }
    
    if (quet==false){
       return false;
       }   
	
}


function edit_sendit()
{
	var f = document.form;
		
	  if(f.str_s_title.value.length == ''){
			alert("�н������� �Է� �ϼ���.");
			f.str_d_title.focus();
			return false;
		}
		
	  if(f.str_sch_dt.value.length == ''){
			alert("�н���ȹ���� �Է� �ϼ���.");
			f.str_sch_dt.focus();
			return false;
		}
						
		if(f.str_s_kind.value.length == ''){
			alert("�з��� ���� �ϼ���.");
			f.str_s_kind.focus();
			return false;
		}
		
		
		if(f.leader_nm.value.length == ''){
			alert("�н� �����ڸ�  �Է� �ϼ���.");
			f.leader_nm.focus();
			return false;
		}

		if(f.s_loc.value.length == ''){
			alert("�н� ��Ҹ�  �Է� �ϼ���.");
			f.s_loc.focus();
			return false;
		}	

		if(f.f_hour.value.length == ''){
			alert("�н� ���۽ð�  �Է� �ϼ���.");
			f.f_hour.focus();
			return false;
		}			

		if(f.f_min.value.length == ''){
			alert("�н� ���ۺ���  �Է� �ϼ���.");
			f.f_min.focus();
			return false;
		}	

		if(f.t_hour.value.length == ''){
			alert("�н� ����ð���  �Է� �ϼ���.");
			f.t_hour.focus();
			return false;
		}	
		
		if(f.t_min.value.length == ''){
			alert("�н� ������� �Է� �ϼ���.");
			f.t_min.focus();
			return false;
		}			
				    
   quet = confirm ("�����Ͻðڽ��ϱ�?.")
    if (quet==true){
				File.Upload();

    }
    
    if (quet==false){
       return false;
       }   
	
}


function send_del()
{
	  quet = confirm ("�����Ͻðڽ��ϱ�?.���� �� ���� �Ұ����մϴ�.")
    if (quet==true){
    	
    document.form.action="s_sch_del.asp" 	
    document.form.submit();	

    }
    
    if (quet==false){
       return false;
       } 
}
