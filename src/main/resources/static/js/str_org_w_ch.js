function sendit()
{
	var f = document.form;
	
	  if(f.str_o_nm.value.length == ''){
			alert("학습조직명을 입력하세요.");
			f.str_o_nm.focus();
			return false;
		}
		
		if(f.saubu.value.length == ''){
			alert("사업부를 선택하세요.");
			f.saubu.focus();
			return false;
		}

		if(f.deptname.value.length == ''){
			alert("부서를  입력 하세요.");
			f.deptname.focus();
			return false;
		}
		
		if(f.b_kind.value.length == ''){
			alert("분류를 선택 하세요.");
			f.b_kind.focus();
			return false;
		}
		
		if(f.leader_nm.value.length == ''){
			alert("학습조직 리더를 입력 하세요.");
			f.leader_nm.focus();
			return false;
		}
		
	  if(f.st_member.value.length == ''){
			alert("구성원을  입력 하세요.");
			f.st_member.focus();
			return false;
		}
		
		
    
   quet = confirm ("저장하시겠습니까?.")
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
			alert("학습조직명을 입력하세요.");
			f.str_o_nm.focus();
			return false;
		}
		
		if(f.saubu.value.length == ''){
			alert("사업부를 선택하세요.");
			f.saubu.focus();
			return false;
		}

		if(f.deptname.value.length == ''){
			alert("부서를  입력 하세요.");
			f.deptname.focus();
			return false;
		}
		
		if(f.b_kind.value.length == ''){
			alert("분류를 선택 하세요.");
			f.b_kind.focus();
			return false;
		}
		
		if(f.leader_nm.value.length == ''){
			alert("학습조직 리더를 입력 하세요.");
			f.leader_nm.focus();
			return false;
		}
		
	  if(f.st_member.value.length == ''){
			alert("구성원을  입력 하세요.");
			f.st_member.focus();
			return false;
		}
		
		
    
   quet = confirm ("저장하시겠습니까?.")
    if (quet==true){
    document.form.action="str_org_edit_form_in.asp" 	
    document.form.submit();

    }
    
    if (quet==false){
       return false;
       }   
	
}

