function sendit()
{
	var f = document.form;
		
	  if(f.str_s_title.value.length == ''){
			alert("학습제목을 입력 하세요.");
			f.str_d_title.focus();
			return false;
		}
		
	  if(f.str_sch_dt.value.length == ''){
			alert("학습계획일을 입력 하세요.");
			f.str_sch_dt.focus();
			return false;
		}
						
		if(f.str_s_kind.value.length == ''){
			alert("분류를 선택 하세요.");
			f.str_s_kind.focus();
			return false;
		}
		
		
		if(f.leader_nm.value.length == ''){
			alert("학습 진행자를  입력 하세요.");
			f.leader_nm.focus();
			return false;
		}
		
		if(f.s_loc.value.length == ''){
			alert("학습 장소를  입력 하세요.");
			f.s_loc.focus();
			return false;
		}	

		if(f.f_hour.value.length == ''){
			alert("학습 시작시간  입력 하세요.");
			f.f_hour.focus();
			return false;
		}			

		if(f.f_min.value.length == ''){
			alert("학습 시작분을  입력 하세요.");
			f.f_min.focus();
			return false;
		}	

		if(f.t_hour.value.length == ''){
			alert("학습 종료시간을  입력 하세요.");
			f.t_hour.focus();
			return false;
		}	
		
		if(f.t_min.value.length == ''){
			alert("학습 종료분을 입력 하세요.");
			f.t_min.focus();
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


function edit_sendit()
{
	var f = document.form;
		
	  if(f.str_s_title.value.length == ''){
			alert("학습제목을 입력 하세요.");
			f.str_d_title.focus();
			return false;
		}
		
	  if(f.str_sch_dt.value.length == ''){
			alert("학습계획일을 입력 하세요.");
			f.str_sch_dt.focus();
			return false;
		}
						
		if(f.str_s_kind.value.length == ''){
			alert("분류를 선택 하세요.");
			f.str_s_kind.focus();
			return false;
		}
		
		
		if(f.leader_nm.value.length == ''){
			alert("학습 진행자를  입력 하세요.");
			f.leader_nm.focus();
			return false;
		}

		if(f.s_loc.value.length == ''){
			alert("학습 장소를  입력 하세요.");
			f.s_loc.focus();
			return false;
		}	

		if(f.f_hour.value.length == ''){
			alert("학습 시작시간  입력 하세요.");
			f.f_hour.focus();
			return false;
		}			

		if(f.f_min.value.length == ''){
			alert("학습 시작분을  입력 하세요.");
			f.f_min.focus();
			return false;
		}	

		if(f.t_hour.value.length == ''){
			alert("학습 종료시간을  입력 하세요.");
			f.t_hour.focus();
			return false;
		}	
		
		if(f.t_min.value.length == ''){
			alert("학습 종료분을 입력 하세요.");
			f.t_min.focus();
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
    	
    document.form.action="s_sch_del.asp" 	
    document.form.submit();	

    }
    
    if (quet==false){
       return false;
       } 
}
