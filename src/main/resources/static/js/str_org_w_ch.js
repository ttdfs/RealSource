function sendit()
{
	var f = document.form;
	
	  if(f.str_o_nm.value.length == ''){
			alert("�н��������� �Է��ϼ���.");
			f.str_o_nm.focus();
			return false;
		}
		
		if(f.saubu.value.length == ''){
			alert("����θ� �����ϼ���.");
			f.saubu.focus();
			return false;
		}

		if(f.deptname.value.length == ''){
			alert("�μ���  �Է� �ϼ���.");
			f.deptname.focus();
			return false;
		}
		
		if(f.b_kind.value.length == ''){
			alert("�з��� ���� �ϼ���.");
			f.b_kind.focus();
			return false;
		}
		
		if(f.leader_nm.value.length == ''){
			alert("�н����� ������ �Է� �ϼ���.");
			f.leader_nm.focus();
			return false;
		}
		
	  if(f.st_member.value.length == ''){
			alert("��������  �Է� �ϼ���.");
			f.st_member.focus();
			return false;
		}
		
		
    
   quet = confirm ("�����Ͻðڽ��ϱ�?.")
    if (quet==true){
    document.form.action="s_org_form_in.asp" 	
    document.form.submit();

    }
    
    if (quet==false){
       return false;
       }   
	
}



function edit_sendit()
{
	var f = document.form;
	
	  if(f.str_o_nm.value.length == ''){
			alert("�н��������� �Է��ϼ���.");
			f.str_o_nm.focus();
			return false;
		}
		
		if(f.saubu.value.length == ''){
			alert("����θ� �����ϼ���.");
			f.saubu.focus();
			return false;
		}

		if(f.deptname.value.length == ''){
			alert("�μ���  �Է� �ϼ���.");
			f.deptname.focus();
			return false;
		}
		
		if(f.b_kind.value.length == ''){
			alert("�з��� ���� �ϼ���.");
			f.b_kind.focus();
			return false;
		}
		
		if(f.leader_nm.value.length == ''){
			alert("�н����� ������ �Է� �ϼ���.");
			f.leader_nm.focus();
			return false;
		}
		
	  if(f.st_member.value.length == ''){
			alert("��������  �Է� �ϼ���.");
			f.st_member.focus();
			return false;
		}
		
		
    
   quet = confirm ("�����Ͻðڽ��ϱ�?.")
    if (quet==true){
    document.form.action="str_org_edit_form_in.asp" 	
    document.form.submit();

    }
    
    if (quet==false){
       return false;
       }   
	
}

