function sendit()
{
	var f = document.form;
		
	  if(f.s_d_title.value.length == ''){
			alert("�н������� �Է� �ϼ���.");
			f.s_d_title.focus();
			return false;
		}
		
	  if(f.str_d_dt.value.length == ''){
			alert("�н��������� �Է� �ϼ���.");
			f.str_d_dt.focus();
			return false;
		}
						
		if(f.str_d_kind.value.length == ''){
			alert("�з��� ���� �ϼ���.");
			f.str_d_kind.focus();
			return false;
		}
		
	  if(f.str_d_level.value.length == ''){
			alert("���ȼ����� ���� �ϼ���.");
			f.str_d_level.focus();
			return false;
		}
		
		if(f.leader_nm.value.length == ''){
			alert("�н� �����ڸ�  �Է� �ϼ���.");
			f.leader_nm.focus();
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
    	
    document.form.action="s_dat_del.asp" 	
    document.form.submit();	

    }
    
    if (quet==false){
       return false;
       } 
}



