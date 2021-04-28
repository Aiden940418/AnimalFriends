<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../includes/header.jsp" %>   

<div class="container text">
<h1 class="display-6 mt-5 ms-5">주문내역 확인</h1>
<hr>
</div>

     <div class="container mt-5 ms-5">
     
     
		<div class="card mb-3" style="width: 1200px; margin-left: 40px;">
			<div class="row g-0">
				<div class="col-md-4" style="padding: 15px 15px 15px 15px;">
					<img src="resources/images/adopt_dog1.png" alt="..." style="width: 14rem;">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">상품명 : </h5><br>
						<p class="card-text">수량  : </p>
						<p class="card-text">옵션  : </p>
						<p class="card-text">결제예상 금액  : </p>
						
					</div>
				</div>
			</div>
		</div>
         <hr>
         <h1 class="display-7 mt-5 ms-5">주문 정보 입력</h1>
         
         <div class="ms-5 mt-3 form-check form-switch">
  <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault">
  <label class="form-check-label" for="flexSwitchCheckDefault">기존배송지</label>
</div>
<div class="ms-5 form-check form-switch">
  <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" >
  <label class="form-check-label" for="flexSwitchCheckChecked">신규배송지</label>
</div>
         <div class=" ms-5 container mt-2 boarder=1 " >
        <table>
        <tr>
        <th>구매자 이름</th>
        <td><input type="text" name="buy_name"></td>
        </tr>
        
        <tr>
        <th>배송 받는 사람</th>
        <td><input type="text" name="real_name"></td>
        </tr>
        
        <tr>
        <th>주소</th>
        <td><input type="text" name="buy_name"></td>
        </tr>
        
        <tr>
        <th>연락처</th>
        <td><input type="text" name="real_name"></td>
        </tr>
        
        <tr>
        <th>이메일</th>
        <td><input type="text" name="real_name"></td>
        </tr>
        
        
        <tr>
        <th>배송 요청</th>
        <td><input type="text" name="real_name"></td>
        </tr>
        </table>

      	
         
         </div>
         <br>
         
         <hr>
        <h1 class="display-8 mt-4 ms-5">결제 정보</h1>
        <div class="ms-5 mt-3">
        <form method="get" action="">
        
        <label><input type="radio" name="card" value="payByCard">카드결제</label>
        <label><input type="radio" name="cash" value="payByCash">무통장입금</label><br>
         <br>
        <label>카드선택 </label>
 		<select id="cardCompany" name="cardName">
		    <option value="BC">비씨카드</option>
		    <option value="hyundea">현대카드</option>
		    <option value="nh">농협카드</option>
		    <option value="lotte">롯데카드</option>
			<option value="woori">우리카드</option>
		</select>
         
         
         
         
         
         </form>
         </div>
         </div>
  
  	<br>
  	<br>
       <div class="container text-center">
       
	<button type="button" class="btn btn-primary btn-lg" onclick="location.href='goodsPayment.do'">결제하기</button>
   	<button type="button" class="btn btn-primary btn-lg" onclick="location.href='goodsDetails.do'">구매취소</button>
       
       
  
  	   </div>
      

		
		
		
     




      <!-- 여기는 footer -->
			 <%@ include file="../includes/footer.jsp" %>  