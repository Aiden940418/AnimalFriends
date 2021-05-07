<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../includes/header.jsp" %>   



<style type="text/css">
	h1{
	text-align: center;
	margin-top:20px;
    margin-bottom:50px;
	}

	.container_map{
	 align-items:center;
	 text-align: center;
	display: table;
    margin: auto;
	}
	h1{
	margin-top: 20px;
	}
	.search-box{
	height: 40px;
	width: 600px;
	border: 1px solid #1b5ac2;
	background: #ffffff;

	}
	
	input{
	font-size: 12px;
	width: 400px;
	padding: 10px;
	border: 0px;
	outline: none;
	float: left;
	}
	
	button{
	width: 50px;
	height: 100%;
	border: 0px;
	background: #007bff;
	outline: none;
	float: right;
	color: #ffffff;
	}

	
	/* 콤보박스 스크롤 만들기 */
	#guSelect {
  		height:150px;
  		overflow-y: scroll;
	}
	#siSelect {
  		height:150px;
  		overflow-y: scroll;
	}
	
</style>

<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function () {
		$("#seoulSelect").show();
		$("#gyeonggiSelect").hide();
		
		/* 콤보박스 선택 시 버튼의 텍스트 변경되도록 자바스크립트 처리 */
		$('#locationSelect li > a').on('click', function() {
		    // 버튼에 선택된 항목 텍스트 넣기 
		    $('#locationSelectBtn').text($(this).text());
		        
		    // 선택된 항목 값(value) 얻기
		    //alert($(this).attr('value'));
		});
		$('#guSelect li > a').on('click', function() {
		    // 버튼에 선택된 항목 텍스트 넣기 
		    $('#guSelectBtn').text($(this).text());
		});
		$('#siSelect li > a').on('click', function() {
		    // 버튼에 선택된 항목 텍스트 넣기 
		    $('#siSelectBtn').text($(this).text());
		});
		
		
		function find() {
			//선택한 시/도 + 시/군/구 값
	        var area = $('#locationSelectBtn').attr('data-siordo');
	        
	        area += '&nbsp;' ;
	        
	        if(area.indexOf("서울")> -1 ){
	        	//조건 : 만약 '서울'이 포함되어 있다면 -> '구' value 더하기 실행
	        	area += $('#guSelectBtn').attr('data-guselect');
	        	
	        }else{
	        	//조건 : 만약 '서울'이 포함되어 있지 않다면(경기도) -> '시/군' value 더하기 실행
	        	area += $('#siSelectBtn').attr('data-siselect');
	        }
	        
	        
	        
	        // 혹은
	        // var area = $('#locationSelectBtn').data('siordo');
	    }
		
			//지역별 드롭다운 선택 시 value 가져오는 function들
			// 1.서울시/경기도 선택
		 $('#locationSelect li > a').on('click', function () {
		        $('#locationSelectBtn').text($(this).text());
		        var area = $(this).attr('value');
		        console.log('선택된 값: ' + area);

		        $('#locationSelectBtn').attr('data-siordo', area);
		    });   
		
			// 2.구 선택
		 $('#guSelect li > a').on('click', function () {
		        $('#guSelectBtn').text($(this).text());
		        var area = $(this).attr('value');
		        console.log('선택된 값: ' + area);

		        $('#guSelectBtn').attr('data-guselect', area);
		    });   
		
			// 3.시/군 선택
		 $('#siSelect li > a').on('click', function () {
		        $('#siSelectBtn').text($(this).text());
		        var area = $(this).attr('value');
		        console.log('선택된 값: ' + area);

		        $('#siSelectBtn').attr('data-siselect', area);
		    });   
		
		
		
		
		
		
	});
	
	function seoulSelect() {
		$("#seoulSelect").show();
		$("#gyeonggiSelect").hide();
	}
	function gyeonggiSelect() {
		$("#seoulSelect").hide();
		$("#gyeonggiSelect").show();
	}
	
	
	
	
	
	
	
	
	
</script>

<div class="container">


<h1>동물 보호소 찾기</h1>

	<div class="row">
		<!-- 좌측 카테고리 선택 및 검색 영역 -->
		<div class="col-4 border border-dark rounded" style="height: 700px;">
			
			<!-- 카테고리 선택 부분 -->
			<div class="row">
			
				<div class="dropdown mt-2 col">
					<a class="btn btn-success dropdown-toggle" role="button"
						id="locationSelectBtn" data-bs-toggle="dropdown"
						aria-expanded="false" data-siordo="">지역 선택</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink" id="locationSelect">
						<li><a class="dropdown-item" href="javascript:seoulSelect();" value="서울특별시">서울시</a></li>
						<li><a class="dropdown-item" href="javascript:gyeonggiSelect();" value="경기도">경기도</a></li>
					</ul>
				</div>
				
				<div class="dropdown mt-2 col" id="seoulSelect">
					<a class="btn btn-success dropdown-toggle" href="#" role="button"
						id="guSelectBtn" data-bs-toggle="dropdown"
						aria-expanded="false" data-guselect=""> 구 선택 </a>
					<ul class="dropdown-menu locationSelect" id="guSelect" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#" value="강남구">강남구 </a></li>
						<li><a class="dropdown-item" href="#" value="강동구">강동구 </a></li>
						<li><a class="dropdown-item" href="#" value="강북구">강북구 </a></li>
						<li><a class="dropdown-item" href="#" value="강서구">강서구 </a></li>
						<li><a class="dropdown-item" href="#" value="관악구">관악구 </a></li>
						<li><a class="dropdown-item" href="#" value="광진구">광진구 </a></li>
						<li><a class="dropdown-item" href="#" value="구로구">구로구 </a></li>
						<li><a class="dropdown-item" href="#" value="금천구">금천구 </a></li>
						<li><a class="dropdown-item" href="#" value="노원구">노원구 </a></li>
						<li><a class="dropdown-item" href="#" value="도봉구">도봉구</a></li>
						<li><a class="dropdown-item" href="#" value="동대문구">동대문구 </a></li>
						<li><a class="dropdown-item" href="#" value="동작구">동작구 </a></li>
						<li><a class="dropdown-item" href="#" value="마포구">마포구</a></li>
						<li><a class="dropdown-item" href="#" value="서대문구">서대문구 </a></li>
						<li><a class="dropdown-item" href="#" value="서초구">서초구 </a></li>
						<li><a class="dropdown-item" href="#" value="성동구">성동구 </a></li>
						<li><a class="dropdown-item" href="#" value="성북구">성북구 </a></li>
						<li><a class="dropdown-item" href="#" value="송파구">송파구 </a></li>
						<li><a class="dropdown-item" href="#" value="양천구">양천구 </a></li>
						<li><a class="dropdown-item" href="#" value="영등포구">영등포구 </a></li>
						<li><a class="dropdown-item" href="#" value="용산구">용산구 </a></li>
						<li><a class="dropdown-item" href="#" value="은평구">은평구 </a></li>
						<li><a class="dropdown-item" href="#" value="종로구">종로구 </a></li>
						<li><a class="dropdown-item" href="#" value="중구">중구 </a></li>
						<li><a class="dropdown-item" href="#" value="중랑구">중랑구 </a></li>
					</ul>
				</div>
				
				<div class="dropdown mt-2 col" id="gyeonggiSelect">
					<a class="btn btn-success dropdown-toggle" href="#" role="button"
						id="siSelectBtn" data-bs-toggle="dropdown"
						aria-expanded="false" data-siselect=""> 시 선택 </a>
					<ul class="dropdown-menu locationSelect" id="siSelect" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#" value="가평군">가평군 </a></li>
						<li><a class="dropdown-item" href="#" value="고양시">고양시 </a></li>
						<li><a class="dropdown-item" href="#" value="과천시">과천시 </a></li>
						<li><a class="dropdown-item" href="#" value="광명시">광명시 </a></li>
						<li><a class="dropdown-item" href="#" value="광주시">광주시 </a></li>
						<li><a class="dropdown-item" href="#" value="구리시">구리시 </a></li>
						<li><a class="dropdown-item" href="#" value="군포시">군포시 </a></li>
						<li><a class="dropdown-item" href="#" value="김포시">김포시 </a></li>
						<li><a class="dropdown-item" href="#" value="남양주시">남양주시 </a></li>
						<li><a class="dropdown-item" href="#" value="동두천시">동두천시 </a></li>
						<li><a class="dropdown-item" href="#" value="부천시">부천시 </a></li>
						<li><a class="dropdown-item" href="#" value="성남시 ">성남시 </a></li>
						<li><a class="dropdown-item" href="#" value="수원시">수원시 </a></li>
						<li><a class="dropdown-item" href="#" value="시흥시">시흥시 </a></li>
						<li><a class="dropdown-item" href="#" value="안산시">안산시 </a></li>
						<li><a class="dropdown-item" href="#" value="안성시">안성시</a></li>
						<li><a class="dropdown-item" href="#" value="안양시">안양시 </a></li>
						<li><a class="dropdown-item" href="#" value="양주시">양주시 </a></li>
						<li><a class="dropdown-item" href="#" value="양평군">양평군 </a></li>
						<li><a class="dropdown-item" href="#" value="여주시">여주시</a></li>
						<li><a class="dropdown-item" href="#" value="연천군">연천군 </a></li>
						<li><a class="dropdown-item" href="#" value="오산시">오산시 </a></li>
						<li><a class="dropdown-item" href="#" value="용인시">용인시 </a></li>
						<li><a class="dropdown-item" href="#" value="의왕시">의왕시 </a></li>
						<li><a class="dropdown-item" href="#" value="의정부시">의정부시 </a></li>
						<li><a class="dropdown-item" href="#" value="이천시">이천시 </a></li>
						<li><a class="dropdown-item" href="#" value="파주시">파주시</a></li>
						<li><a class="dropdown-item" href="#" value="평택시">평택시 </a></li>
						<li><a class="dropdown-item" href="#" value="포천시">포천시</a></li>
						<li><a class="dropdown-item" href="#" value="하남시">하남시 </a></li>
						<li><a class="dropdown-item" href="#" value="화성시">화성시 </a></li>
					</ul>
				</div>
				
			</div> 
			
		</div>
	
	<!-- 지도 시작 -->
	<!-- 지도 화면 띄우는 영역 div -->
		<div id="map" class="col-8" ></div>
		
	</div>
	
	<!-- 카카오 지도 api 사용 위한 script 코드 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3fdd8e02dcb3d23798f0ddaa0d9352bf&libraries=LIBRARY"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3fdd8e02dcb3d23798f0ddaa0d9352bf&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3fdd8e02dcb3d23798f0ddaa0d9352bf&libraries=services,clusterer,drawing"></script>
	
	<!-- 지도 부분 -->
	<script type="text/javascript">
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	</script>
	
	

	












</div>
 <%@ include file="../includes/footer.jsp" %>   
