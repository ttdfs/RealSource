function sendit()
{
	var f = document.form;
		
	  if(f.s_d_title.value.length == ''){
			alert("학습제목을 입력 하세요.");
			f.s_d_title.focus();
			return false;
		}
		
	  if(f.str_d_dt.value.length == ''){
			alert("학습진행일을 입력 하세요.");
			f.str_d_dt.focus();
			return false;
		}
						
		if(f.str_d_kind.value.length == ''){
			alert("분류를 선택 하세요.");
			f.str_d_kind.focus();
			return false;
		}
		
	  if(f.str_d_level.value.length == ''){
			alert("보안수준을 선택 하세요.");
			f.str_d_level.focus();
			return false;
		}
		
		if(f.leader_nm.value.length == ''){
			alert("학습 진행자를  입력 하세요.");
			f.leader_nm.focus();
			return false;
		}
		    
   quet = confirm ("저장하시겠습니까?.")
    if (quet==true){
				File.Upload();
    }
    
    if (quet==false){
       return false;
       }   
	
}


function send_del()
{
	  quet = confirm ("삭제하시겠습니까?.삭제 후 복구 불가능합니다.")
    if (quet==true){
    	
    document.form.action="s_dat_del.asp" 	
    document.form.submit();	

    }
    
    if (quet==false){
       return false;
       } 
}



