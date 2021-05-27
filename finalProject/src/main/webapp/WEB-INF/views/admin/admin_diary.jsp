<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<!-- header -->
<%@ include file="../includes/header.jsp"%>
<!-- leftmenubar -->
<%@ include file="../includes/admin_leftMenuBar.jsp"%>

<style type="text/css">



</style>


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
	
	
	$(document).on("click", '#deleteBtn', function adminDiaryDelete(){
		//삭제 확인 메세지 띄워서 확인
		var yn = confirm("정말로 글을 삭제하시겠습니까?");
		
		if(yn){
			var dno = $(this).val();
			
			location.href="adminDiaryDelete.do?dno="+dno;
		}else{
			
		}
	});
	
	
	
	
</script>



<!-- 페이지 내용 부분 -->
<div class="contentDiv">

	<div style="margin-top: 100px;">
		<div class="container">
			<h1 class="text-center">입양일기 관리</h1>
		</div>

	</div>

	<!-- 가로줄 -->
	<div
		style="border-bottom: groove; margin-top: 80px; margin-left: 20px; margin-right: 50px;">
	</div>

	<!-- 입양일기 그리드 시작 -->
	<div class="container">
			<div class="row">
			
				<c:forEach items="${list }" var="dto">		
					<!-- 글 박스 카드 -->
					<div class="col-sm">
                        <div class="card text-center" style="width: 22rem; margin-top: 20px;">
                            <img class="card-img-top"
                                src="resources/${dto.diaryImg }" alt="Card image cap" 
                                style="width:22rem;height:15rem; border:none; object-fit:cover;">
                            <div class="card-body box">
                                <p class="card-text content">${dto.dcontent }</p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">작성일 [ ${dto.ddateToChar } ]</li>
                             </ul>
                            <div class="d-grid gap-2">
                                <button class="btn btn-outline-success" id="deleteBtn" value="${dto.dno }">글 삭제</button>
                            </div>
                        </div>
                    </div>
				</c:forEach>	
				
			</div>
		</div>
	<!-- 입양일기 그리드 끝 -->



	<!-- footer -->
	<%@ include file="../includes/footer.jsp"%>
</div>
</html>
