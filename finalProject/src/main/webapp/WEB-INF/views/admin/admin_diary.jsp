<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- header -->
<%@ include file="../includes/header_R.jsp" %>

<title>입양 일기 관리</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>

<style type="text/css">

	#DrManage {
		position: relative;
	    top: 55px;
	
	}
	
	#horisonLine {
 	    height: 10px;
	    border-bottom: groove;
	    position: relative;
	    top: 145px;
	    width: 98%;
	 }
	 
	 #secCtn{
		position: relative;
		top: 173px;	 
	}

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

	<div class="container text-center" id="DrManage">
		<h1 class="text-center">입양일기 관리</h1>
	</div>


	<!-- 가로줄 -->
	<div id="horisonLine"></div>


	<!-- 입양일기 그리드 시작 -->
	<div class="container" id="secCtn">
			<div class="row" style="margin-left: 51px;">
			
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
	<div style="height:200px;"></div>
	
</div>

	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>