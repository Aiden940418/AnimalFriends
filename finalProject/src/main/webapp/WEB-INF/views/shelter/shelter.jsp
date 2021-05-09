<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../includes/header.jsp" %>   



<style type="text/css">
	h1{
	text-align: center;
	margin-top:20px;
    margin-bottom:50px;
	margin-top: 20px;
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

	var itemArr = new Array();
	
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
		
		
		
		//보호시설 리스트 출력 위한 ajax
		$.ajax({
			url : "zipXML.do",
			method : "POST",
			dataType : "json",
			data : {
				
			},
		}).done(function(data) {
			
			printResult(data);
			
		});
		//ajax 통신 성공 후 화면 출력 위한 함수
		function printResult(data) {
			//console.log(data);
			
			for(var i=0; i<243; i++){
				
				var item = data.response.body.items.item[i];
				//var aTag = "<a href='#' style='text-decoration: none; color:black;'>";
				var aTag = "<a id='"+ i +"' href='#' style='text-decoration: none; color:black;'>";
				
				$("#shelterListUl").append("<li>" + aTag + item.careNm + "<br>" + item.careAddr 
											 + "</a></li>" + "<hr>");
				
				
				itemArr[i] = item;
				//console.log(itemArr[i]);
			}
		}
		
		//동적으로 추가된 li태그들(보호시설 리스트들)에 이벤트 바인딩
		$("ul").on("click", "li", function() {
			console.log($(this).children().attr('id'));
			var selectedItemId = $(this).children().attr('id');
			
			//console.log(itemArr[selectedItemId]);
			//console.log(itemArr[selectedItemId].careAddr);
			var selectedAddr = itemArr[selectedItemId].careAddr;
			var selectedCareNm = itemArr[selectedItemId].careNm;
			var selectedCareTel = itemArr[selectedItemId].careTel;
			
			
			
			// 주소로 좌표를 검색합니다
			geocoder.addressSearch( selectedAddr, function(result, status) {
			
			    // 정상적으로 검색이 완료됐으면 
			     if (status === kakao.maps.services.Status.OK) {
		
			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });
		
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:300px;text-align:center;padding:6px 0;">'
			            			+ selectedCareNm +"<br>"+ selectedAddr +"<br>"+ selectedCareTel + '</div>'
			        });
			        infowindow.open(map, marker);
		
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    }
			});
			
		});
		
		
		
		
	});
	
	//카테고리 서울, 경기 선택 시 버튼 숨겼다 보여주기 하기위한 자바스크립트
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
						aria-expanded="false">지역 선택</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink" id="locationSelect">
						<li><a class="dropdown-item" href="javascript:seoulSelect();">서울시</a></li>
						<li><a class="dropdown-item" href="javascript:gyeonggiSelect();">경기도</a></li>
					</ul>
				</div>
				
				<div class="dropdown mt-2 col" id="seoulSelect">
					<a class="btn btn-success dropdown-toggle" href="#" role="button"
						id="guSelectBtn" data-bs-toggle="dropdown"
						aria-expanded="false"> 구 선택 </a>
					<ul class="dropdown-menu locationSelect" id="guSelect" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">종로구</a></li>
						<li><a class="dropdown-item" href="#">중구</a></li>
						<li><a class="dropdown-item" href="#">용산구</a></li>
						<li><a class="dropdown-item" href="#">성동구</a></li>
						<li><a class="dropdown-item" href="#">광진구</a></li>
						<li><a class="dropdown-item" href="#">동대문구</a></li>
						<li><a class="dropdown-item" href="#">중랑구</a></li>
						<li><a class="dropdown-item" href="#">성북구</a></li>
						<li><a class="dropdown-item" href="#">강북구</a></li>
						<li><a class="dropdown-item" href="#">도봉구</a></li>
						<li><a class="dropdown-item" href="#">노원구</a></li>
						<li><a class="dropdown-item" href="#">은평구</a></li>
						<li><a class="dropdown-item" href="#">서대문구</a></li>
						<li><a class="dropdown-item" href="#">마포구</a></li>
						<li><a class="dropdown-item" href="#">양천구</a></li>
						<li><a class="dropdown-item" href="#">강서구</a></li>
						<li><a class="dropdown-item" href="#">구로구</a></li>
						<li><a class="dropdown-item" href="#">금천구</a></li>
						<li><a class="dropdown-item" href="#">영등포구</a></li>
						<li><a class="dropdown-item" href="#">동작구</a></li>
						<li><a class="dropdown-item" href="#">관악구</a></li>
						<li><a class="dropdown-item" href="#">서초구</a></li>
						<li><a class="dropdown-item" href="#">강남구</a></li>
						<li><a class="dropdown-item" href="#">송파구</a></li>
						<li><a class="dropdown-item" href="#">강동구</a></li>
					</ul>
				</div>
				
				<div class="dropdown mt-2 col" id="gyeonggiSelect">
					<a class="btn btn-success dropdown-toggle" href="#" role="button"
						id="siSelectBtn" data-bs-toggle="dropdown"
						aria-expanded="false"> 시 선택 </a>
					<ul class="dropdown-menu locationSelect" id="siSelect" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">수원시</a></li>
						<li><a class="dropdown-item" href="#">성남시</a></li>
						<li><a class="dropdown-item" href="#">안양시</a></li>
						<li><a class="dropdown-item" href="#">안산시</a></li>
						<li><a class="dropdown-item" href="#">용인시</a></li>
						<li><a class="dropdown-item" href="#">부천시</a></li>
						<li><a class="dropdown-item" href="#">광명시</a></li>
						<li><a class="dropdown-item" href="#">평택시</a></li>
						<li><a class="dropdown-item" href="#">과천시</a></li>
						<li><a class="dropdown-item" href="#">오산시</a></li>
						<li><a class="dropdown-item" href="#">시흥시</a></li>
						<li><a class="dropdown-item" href="#">군포시</a></li>
						<li><a class="dropdown-item" href="#">의왕시</a></li>
						<li><a class="dropdown-item" href="#">하남시</a></li>
						<li><a class="dropdown-item" href="#">이천시</a></li>
						<li><a class="dropdown-item" href="#">안성시</a></li>
						<li><a class="dropdown-item" href="#">김포시</a></li>
						<li><a class="dropdown-item" href="#">화성시</a></li>
						<li><a class="dropdown-item" href="#">광주시</a></li>
						<li><a class="dropdown-item" href="#">여주시</a></li>
						<li><a class="dropdown-item" href="#">양평군</a></li>
						<li><a class="dropdown-item" href="#">고양시</a></li>
						<li><a class="dropdown-item" href="#">의정부시</a></li>
						<li><a class="dropdown-item" href="#">동두천시</a></li>
						<li><a class="dropdown-item" href="#">구리시</a></li>
						<li><a class="dropdown-item" href="#">남양주시</a></li>
						<li><a class="dropdown-item" href="#">파주시</a></li>
						<li><a class="dropdown-item" href="#">양주시</a></li>
						<li><a class="dropdown-item" href="#">포천시</a></li>
						<li><a class="dropdown-item" href="#">연천군</a></li>
						<li><a class="dropdown-item" href="#">가평군</a></li>
					</ul>
				</div>
				
			</div> 
			
			<hr>  <!-- 구분선 -->
			
			<!-- 보호시설 리스트 출력 부분 -->
			<div id="shelterListDiv" style="overflow: scroll; height: 600px;">
				<ul id="shelterListUl">
				</ul>
				
				
			</div>
			
			
			
			
			
		</div>
	
	
	<!-- 지도 시작 -->
	<!-- 지도 화면 띄우는 영역 div -->
		<div id="map" class="col-8" ></div>
		
	</div>
	
	<!-- 카카오 지도 api 사용 위한 script 코드 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3fdd8e02dcb3d23798f0ddaa0d9352bf&libraries=services,clusterer,drawing"></script>
	
	<!-- 지도 부분 -->
	<script type="text/javascript">
		/* var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴 */
		
		
		
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
	
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
	
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('서울시', function(result, status) {
	
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
	
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
	
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        /* var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">여기에 설명</div>'
		        }); */
		        infowindow.open(map, marker);
	
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    }
		});    
		
	</script>
	
	

	












</div>
 <%@ include file="../includes/footer.jsp" %>   
