<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- header -->
	<%@ include file="../includes/header.jsp" %>
	
	<!-- leftMenuBar -->
	<%@ include file="../includes/mypage_leftMenuBar.jsp"%>	
	
	
<script>
	$(document).ready(function(){

        $('.box').each(function(){
            var content = $(this).children('.content');
            var content_txt = content.text();
            var content_txt_short = content_txt.substring(0,50)+"...";
            var btn_more = $('<a href="javascript:void(0)" class="more">더보기</a>');

            
            $(this).append(btn_more);
            
            if(content_txt.length >= 50){
                content.html(content_txt_short)
                
            }else{
                btn_more.hide()
            }
            
            btn_more.click(toggle_content);

            function toggle_content(){
                if($(this).hasClass('short')){
                    // 접기 상태
                    $(this).html('더보기');
                    content.html(content_txt_short)
                    $(this).removeClass('short');
                }else{
                    // 더보기 상태
                    $(this).html('접기');
                    content.html(content_txt);
                    $(this).addClass('short');

                }
            }
        });
        
    });
	
	
	$(document).on("click", '#deleteBtn', function myDiaryDelete(){
		//삭제 확인 메세지 띄워서 확인
		var yn = confirm("정말로 글을 삭제하시겠습니까?");
		
		if(yn){
			var dno = $(this).val();
			
			location.href="myDiaryDelete.do?dno="+dno;
		}else{
			
		}
	});
	
	
	
	
</script>


	
	
	
	<!-- 페이지 내용 부분 -->
	<div class="contentDiv">
	
		<div style="margin-top: 100px; margin-left: 100px;">
			<div class="myDiaryIconDiv">
				<ion-icon name="person-circle-outline" id="profileIcon" style="font-size:70px;"></ion-icon>
			</div>
			<div>
				<label>User ID [ ${memberDto.mId } ]</label>
				<br> 
				<label>User NickName [ ${memberDto.mNick } ]</label>
			</div>
			<div style="float: right; margin-right: 200px;">
				<button type="button" class="btn btn-secondary">팔로워</button>
				<button type="button" class="btn btn-secondary">팔로우</button>
			</div>
		</div>
		
		<!-- 세로줄 -->
		<div style="border-bottom: groove; margin-top: 80px; margin-left: 20px; margin-right: 50px;">
		</div>
		
		<!-- + 아이콘 -->
		<div style="margin-left: 50px; margin-top: 30px;">
			<a href="mydiaryWriteForm.do" style="color: black;">
				<ion-icon name="add-circle-outline" style="font-size:60px;"></ion-icon>
			</a>
		</div>
		
		
		<!-- 입양일기 그리드 시작 -->
		<div class="container">
			<div class="row">
			
			
				<c:forEach items="${list }" var="dto">		
					<!-- 글 박스 카드 -->
					<div class="col-sm">
						<div class="card" style="width: 18rem; margin-top: 20px;">
							<img class="card-img-top"
								src="resources/${dto.diaryImg }" alt="Card image cap">
							<div class="card-body box">
								<p class="card-text content">${dto.dcontent }</p>
							</div>
							<p class="card-text">&nbsp;&nbsp;&nbsp;작성일 [ ${dto.ddateToChar } ]</p>
								
							<div class="text-end mb-2">
								<button class="btn btn-outline-success" id="deleteBtn" value="${dto.dno }">글 삭제</button>&nbsp;&nbsp;
							</div>
						</div>
					</div>
				</c:forEach>	
				
				

			

				</c:forEach>




				
			</div>
		</div>
		
		
		
		
		
		
	</div>


	


	<br><br><br>
	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>
	
