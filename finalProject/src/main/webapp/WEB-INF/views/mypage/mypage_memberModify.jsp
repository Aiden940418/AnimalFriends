<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- header -->
	<%@ include file="../includes/header_R.jsp" %>

<title>회원 정보 수정</title>

 <!-- 메뉴 사이드바 스크립트 -->
<script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});
</script>

	

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>





function execPostCode() {
		
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           $("[name=mAddr1]").val(data.zonecode);
           $("[name=mAddr2]").val(fullRoadAddr);
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}

//우편로직 끝 
</script>

<style>
	#infoModiDiv {
		position: relative;
	    top: 55px;
 
	}
	
	#iMember {
		position: relative;
	    top: 40px;
	    margin-bottom: 150px;
	    margin: 0 auto;
		}

</style>

	
   <!-- 페이지 내용 부분 -->
   <div class="contentDiv">
   
      <!-- 상단 제목부분 -->
      <div class="container text-center" id="infoModiDiv">
	      <input type="hidden" name="mRole" id="mRole" value="${login.mRole }">
	         <h1 class="text-center">회원 정보 수정</h1>
	         <br>
      </div>
      <br>
      
      <!-- 회원정보 수정 폼 -->
      <c:set var ="mRole" value="${login.mRole}"/>
        <c:if test="${mRole == 1}">
        
      	<div class="container" id="iMember">
      		<div class="row">
				<div class="col-4"></div>
				
				<div class="col-5">
			      <form action="memberUpdate.do" method="POST">
			      	<input type="hidden" name="mNo" value="${login.mNo }">
			               
			   <table  style="margin-left: -55px;">
			                  
			            <tr>
			            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">아이디</button></th>
			            <td colspan="2"><input id="mId" type="text" class="form-control my-1"  style="width:300px; height:40px" readonly="readonly" value="${login.mId}">
			            </td>
			            
			            </tr>
			            
			            <tr>
			            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">비밀번호</button></th>
			            <td colspan="2"><input class="mPw" type="password" id="pw" class="form-control my-1" style="width:300px; height:40px" value="{login.mPw}" readonly="readonly">
			            </td>
			            </tr>
			   
			            <tr>
			            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">이름</button></th>
			            <td colspan="2"><input type="text"  id="mName" class="form-control my-1" value="${login.mName}" readonly="readonly"style="width:300px; height:40px">
			            </td>
			            </tr>
			            
			            <tr>
			            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">닉네임</button></th>
			            <td colspan="2"><input type="text" id="mNick" class="form-control my-1" name="mNick" value="${login.mNick }" style="width:300px; height:40px">
			            </td>
			            </tr>
			            
			            <tr>
			            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">주소</button></th>
			            <td><input type="text" id="mAddr1" class="form-control my-1 text-center" name="mAddr1" value="${login.mAddr1}" style="width:215px;">
			            <td><input class="btn btn-outline-success float-end" type="button" name="addrbtn" value="주소검색"
			            onclick="execPostCode();"></td>
			            </tr>
			            
			            <tr>
			            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">기본주소</button></th>
			            <td colspan="2"><input type="text"  id="mAddr2"class="form-control my-1" name="mAddr2" value="${login.mAddr2}"style="width:300px; height:40px"></td>
			            </tr>
			            
			            <tr>
			            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">상세주소</button></th>
			            <td colspan="2"><input type="text"  id="mAddr3"  class="form-control my-1" name="mAddr3" value="${login.mAddr3}" style="width:300px; height:40px"></td>
			            </tr>
			            
			            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">이메일</button></th>
		            <td colspan="2"><input type="text" id="mPhone" class="form-control my-1" name="mEmail" value="${login.mEmail}" style="width:300px; height:40px"></td>
		            </tr>
			            
			            <tr>
			            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">전화번호</button></th>
			            <td colspan="2"><input type="text" id="mPhone" class="form-control my-1" name="mPhone" value="${login.mPhone}" style="width:300px; height:40px"></td>
			            
			            </tr>
			         </table>
			         
				         <div class="container text-center mt-2 mb-4">
				         <input type="submit" class="btn btn-outline-success" value="완료">
				         <input type="button" class="btn btn-outline-success" value="취소" onclick="location.href='myMemberModityPw.do'">
				         <button type="button" class="btn btn-outline-success" id="delete">회원탈퇴</button>
				        <button type="button" class="btn btn-outline-success" id="pwUpdate">비밀번호 변경</button>
				         
					         <script type="text/javascript">
					         
					         $("#delete").on("click", function(){
								  var confirm_val1 = confirm("정말 탈퇴하시겠습니까?");
					        	  
								  console.log(confirm_val1);
					        	 if(confirm_val1) {
					        		 location.href="memberDeletePwCheck.do";
					        	 
					        	 }else {
					        		 
					        		 location.href="main.do";
					        		 
					        		 }
					 
					        	});
			         
			        		 </script>
				         </div>
			        </form>   
         	
         		</div>
         	</div>
         </div>
         </c:if>
         
         
         
         <c:set var ="mRole" value="${login.mRole}"/>
             <c:if test="${mRole != 1}">
         	 
         	 <div class="container" id="sMember">
         	 	<div class="row">
					<div class="col-4"></div>
				
					<div class="col-5">		
            		<form action="memberUpdate.do" method="POST">
					<input type="hidden" name="mNo" value="${login.mNo }">
		<input type="hidden" name="mNo" value="${login.mNo }">
           
		           <table  style="margin-left: -55px;">
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">아이디</button></th>
		            <td colspan="2"><input id="mId" type="text"  class="form-control my-1" style="width:300px; height:40px" readonly="readonly" value="${login.mId}">
		            </td>
		            </tr>
		            
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
								style="width:130px; pointer-events: none;">비밀번호</button></th>
		            <td colspan="2"><input class="mPw" type="password" id="pw" style="width:300px; height:40px" value="{login.mPw}" readonly="readonly">
		            </td>
		            </tr>
		  
		   
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">대표자명</button></th>
		            <td colspan="2"><input type="text"  id="mName" class="form-control my-1" value="${login.mName}" readonly="readonly"style="width:300px; height:40px">
		            </td>
		            </tr>
		            
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">보호소이름</button></th>
		            <td colspan="2"><input type="text" id="mNick"  class="form-control my-1" name="mNick" value="${login.mNick }" style="width:300px; height:40px">
		            </td>
		            </tr>
		            
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">보호소주소</button></th>
		            <td><input type="text" id="mAddr1" class="form-control my-1 text-center"  name="mAddr1" value="${login.mAddr1}" style="width:215px;">
		            <td><input class="btn btn-outline-success float-end" type="button" name="addrbtn" value="주소검색"
		            onclick="execPostCode();"></td>
		            </tr>
		            
		  
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">기본주소</button></th>
		            <td colspan="2"><input type="text" class="form-control my-1" id="mAddr2" name="mAddr2" value="${login.mAddr2}"style="width:300px; height:40px"></td>
		            </tr>
		      
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">상세주소</button></th>
		            <td colspan="2"><input type="text"  id="mAddr3" class="form-control my-1" name="mAddr3" value="${login.mAddr3}" style="width:300px; height:40px"></td>
		            </tr>
		            
		         	<tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">이메일</button></th>
		            <td colspan="2"><input type="text" id="mPhone" class="form-control my-1" name="mEmail" value="${login.mEmail}" style="width:300px; height:40px"></td>
		            </tr>
		            
		            
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">전화번호</button></th>
		            <td colspan="2"><input type="text" id="mPhone" class="form-control my-1" name="mPhone" value="${login.mPhone}" style="width:300px; height:40px"></td>
		            </tr>
		            
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">사업자번호</button></th>
		            <td colspan="2"><input type="text"  id="sBisNum" class="form-control my-1" name="sBisNum" value="${login.sBisNum }" style="width:300px; height:40px"></td>
		            </tr>
		            
		            <tr>
		            <th><button type="button" class="btn btn-outline-success"
									style="width:130px; pointer-events: none;">판매업번호</button></th>
		            <td colspan="2"><input type="text"  id="sSellNum" class="form-control my-1" name="sSellNum" value="${login.sSellNum }"style="width:300px; height:40px"></td>
		            </tr>
		            
		            </table>
         				
         
		         <div class="container text-center mt-2 mb-4">
				         <input type="submit" class="btn btn-outline-success" value="완료">
				         <input type="button" class="btn btn-outline-success" value="취소" onclick="location.href='myMemberModityPw.do'">
		         <button type="button" class="btn btn-outline-success" id="delete">회원탈퇴</button>
		         <button type="button" class="btn btn-outline-success" id="pwUpdate">비밀번호 변경</button>
		         
		         
		          <script type="text/javascript">
			         
			         $("#pwUpdate").on("click", function(){
						  var confirm_value = confirm("비밀번호를 변경하시겠습니까?");
			        	  
						  console.log(confirm_value);
			        	 if(confirm_value) {
			        		 location.href="memberPwUpdateCheck.do";
			        	 
			        	 }else {
			        		 
			        		 return false;
			        		 }
			 
			        	});
			         
			         </script>
         
			         <script type="text/javascript">
			         
			         $("#delete").on("click", function(){
						  var confirm_val1 = confirm("정말 탈퇴하시겠습니까?");
			        	  
						  console.log(confirm_val1);
			        	 if(confirm_val1) {
			        		 location.href="memberDeletePwCheck.do";
			        	 
			        	 }else {
			        		 
			        		 return false;
			        		 
			        		 }
			 
			        	});
			         
			         </script>
         			</div>
    	        </form>   
	         </div>
         </div>
       </div>
      </c:if>
         
         
   

                  
 </div>
   
   
   <!-- footer -->
	<%@ include file="../includes/footer.jsp" %>   
	<!-- header의 'Page 내용 div' 닫기 태그  -->
	</div> 
	
 	<!-- Page 내용 끝 -->
	
</body>
</html>
   
