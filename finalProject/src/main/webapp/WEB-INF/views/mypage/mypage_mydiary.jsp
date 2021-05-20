<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- JSTL 사용위한 코드 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- ionicons 사용 위한 코드 -->
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

	
	<script type="text/javascript">
	
	//선택 버튼 클릭 시 체크박스 보이기
	$(document).on("click", '#DrSelectToggle', function DrSelectToggle() {
		$('.ck_box').toggle();
	});
			
	$(function(){   
		var chkObj = document.getElementsByName("Dr_ck");
		var DiaryCnt = chkObj.length;
		
		$("input[name='allCheck']").click(function(){
			var chk_DiaryArr = $("input[name='Dr_ck']");
			for (var i=0; i<chk_DiaryArr.length; i++){
				chk_DiaryArr[i].checked = this.checked;
			}
		});
		$("input[name='Dr_ck']").click(function(){
			if($("input[name='Dr_ck']:checked").length == DiaryCnt){
				$("input[name='allCheck']")[0].checked = true;
			}
			else{
				$("input[name='allCheck']")[0].checked = false;
			}
		});
	});

	
		
	
	$(document).on("click", '#DrSelectDelete', function DrSelectDelete() {
		var valueArr = [];
	    
	    $("input[name='Dr_ck']:checked").each(function(i){
            valueArr.push($(this).val());
	    	
	    });
	 
	    
	    if (valueArr.length == 0){
	    	alert("선택된 글이 없습니다.");
	    }
	    else{
			var chk = confirm("정말 삭제하시겠습니까?");				 
			$.ajax({
			    type : 'POST',                
			    url : "MyDRdelete.do",
				dataType:"json",
			    data :  JSON.stringify(valueArr),
                success: function(date){
                    if(data = 1) {
                        alert("삭제 성공");
                        location.replace("mydiary.do")
                    }
                    else{
                        alert("삭제 실패");
                    }
                }
			});
		}
		
		
	
	});
	
	
	
	
	</script>

	
	<style>
	
	#DrSelectToggle {
		position: absolute;
        right: 158px;
	}
	
	#DrSelectDelete {
	    position: absolute;
		right: 95px;
		
	}
	
	.all_ck {
		position: absolute;
        right: 223px;
	}
	
	
	input[type="checkbox"] {
	  width: 20px; 
	  height: 20px; 
	}
	
	
	</style>
	

	
	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		<div style="margin-top: 100px; margin-left: 100px;">
			<div class="myDiaryIconDiv">
				<ion-icon name="person-circle-outline" id="profileIcon"></ion-icon>
			</div>
			<div>
				<label>UserID</label>
				<br> 
				<label>UserNickName</label>
			</div>
			<div style="float: right; margin-right: 200px;">
				<button type="button" class="btn btn-secondary">팔로워</button>
				<button type="button" class="btn btn-secondary">팔로우</button>
			</div>
		</div>
		
		<!-- 세로줄 -->
		<div style="border-bottom: groove; margin-top: 80px; margin-left: 25px; margin-right: 92px;">
		</div>
		
		<!-- + 아이콘 -->
		<div style="margin-left: 50px; margin-top: 30px;">
			<a href="mydiaryWriteForm.do" style="color: black;">
				<ion-icon name="add-circle-outline" style="font-size:60px;"></ion-icon>
			</a>
			<button class="btn btn-success" id="DrSelectToggle" type="button" value="" >선택</button>
			<button class="btn btn-success" id="DrSelectDelete" type="button" value="" >삭제</button>
			
			<input type="checkbox" name="allCheck" class="btn-check all_ck" id="All_Ck" autocomplete="off">
			<label class="btn btn-outline-success all_ck" for="All_Ck">모두 선택</label>			
			
		</div>
		
		
		<!-- 입양일기 그리드 시작 -->
		<div class="container">
			<div class="row">
			
			<c:forEach var="MyDto" items="${list }" >
			
				<div class="col-sm my-3">
					<input type="checkbox" name="Dr_ck"class="ck_box" style="display:none" value="${MyDto.dno }">
					  <div class="card text-center" style="width: 20rem;">
					  <img class="card-img-top" src="resources/${MyDto.diaryImg }">
						  <div class="card-body">
							<p class="card-text">${MyDto.dcontent }</p>
						  </div>
				      </div>
				</div>
		    </c:forEach>		
		    		
			 </div>
				
			
			</div>
				
		</div>
		<!-- 입양일기 그리드 끝 -->
		
		
		
		
		
		
	</div>


	


	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
	
