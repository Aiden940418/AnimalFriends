<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- header -->
	<%@ include file="../includes/header_R.jsp" %>

<title>MyPage</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>
	

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

<style>

		.myProfileImgDiv {
				width: 150px;
				height: 150px; 
				border-radius: 30%;
				overflow: hidden;
				border: 3px	solid #54BD54;
				position:relative;
				top: 5px;
			}
	
		.profile {
		    width: 100%;
		    height: 100%;
		    object-fit: cover;
		}
		
		
	
		#MidMnickDiv {
			position: relative;
		    top: 5px;
		    left: 45px;
			padding:0px;
			margin:0px;
			width:300px;
		
		}
				
 		#RorUdiv {
			width:150px;
			position: relative;
		    top: 12px;
		    left: 20px;
		
		}
		
		 #DRicon {
			width:100px;
    		position: absolute;
    		right: 38px;
  		  	top: 180px;
 		
		}
		
	 	#horisonLine {
	 	    height: 10px;
		    border-bottom: groove;
		    position: relative;
		    top: 50px;
		    width: 100%;
	 	}
	 	
 		 #secCtn{
		    position: relative;
	    	margin-top: 78px; 		
		 }
	

</style>

	
	
	
	<!-- 페이지 내용 부분 -->
  <div class="contentDiv">
		
	<div class="container">
		<div class="row align-items-center" style="postion:relative;">
			 <div class="col-md-6 myProfileImgDiv">
				<img class="profile" src="resources/${prf.profileImg }">
			</div>
			<div class="col" id="MidMnickDiv">
				<table style="height:100px; font-size:20px;">
					<tr>
						<td><label> ID _ '${memberDto.mId } '</label></td>
					</tr>
					<tr>
						<td><label> NickName _ '${memberDto.mNick }'</label></td>
					</tr>
				</table>
			</div>
			<!-- <div id="followIconDiv float-end" class="col">
				<button type="button" class="btn btn-secondary">팔로워</button>
				<button type="button" class="btn btn-secondary">팔로우</button>
			</div> -->
			<!-- 나의 입양일기 등록( + 아이콘) -->
			<div class="col" id="DRicon">
				<a href="mydiaryWriteForm.do" style="color: black;">
					<ion-icon name="add-circle-outline" style="font-size:60px;"></ion-icon>
				</a>
			</div>
			<div class="row">	
				<div class="col" id="RorUdiv">
	     			<button type="button" onclick="location.href='/mvc/RgstOrUpdate.do'"class="btn btn-outline-success btn-sm rounded-pill">등록 or 수정</button>			
	 			</div>
	 		</div>	
		</div>
		
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
                               style="width:22rem;height:15rem; border:none; object-fit:cover;"
                               >
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
		
 </div>

	<!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>