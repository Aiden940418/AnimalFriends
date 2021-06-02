<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header_R.jsp"%>

<!-- 아이콘 사용 위한 코드 -->
<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>

 <title>동물 보호소 찾기</title>
 
  <!-- 메뉴 사이드바 스크립트 -->
 <script>
 	$(function() {
		$('#sidebarCollapse').on('click', function () {
	      $('#sidebar').toggleClass('active');
	  });

	});

 </script>




<style type="text/css">
	h1 {
		text-align: center;
		margin-top:20px;
	    margin-bottom:50px;
		margin-top: 20px;
		}
	
	/* 콤보박스 스크롤 만들기 */
	#guSelect {
		height: 150px;
		overflow-y: scroll;
	}
	
	#siSelect {
		height: 150px;
		overflow-y: scroll;
	}
	
	/*검색결과 스크롤 만들기*/
	#resultAreaDiv {
		overflow-y: scroll;
	}
	
	#horisonLine {
 	    height: 10px;
	    border-bottom: groove;
	    position:absolute;
		top: 245px;
   		width: 93%;
	 }
	 
	.dropdown-toggle::after {
    position: relative;
    top: 17%;
    }
	
</style>

<!-- 제이쿼리 사용 위한 코드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

	var itemArr = new Array();
	
	$(function () {
		$("#seoulSelect").show();
		$("#gyeonggiSelect").hide();

		/* 콤보박스 선택 시 버튼에 표시되는 텍스트 변경되도록 자바스크립트 처리 */
		$('#locationSelect li > a').on('click', function() {
			// 서울시/경기도 버튼
			$('#locationSelectBtn').text($(this).text());

		});
		
		$('#guSelect li > a').on('click', function() {
			// 구(서울시) 버튼
			$('#guSelectBtn').text($(this).text());
		});
		
		$('#siSelect li > a').on('click', function() {
			// 시/군 버튼
			$('#siSelectBtn').text($(this).text());
		});

		/* 지역별 드롭다운 선택 시 value 가져오는 function들 */
		// 1.서울시/경기도 선택
		$('#locationSelect li > a').on('click', function() {
			$('#locationSelectBtn').text($(this).text());
			var area = $(this).attr('value');
			//console.log('선택된 값: ' + area);

			$('#locationSelectBtn').attr('data-siordo', area);
		});

		// 2-A.구 선택(서울시)
		$('#guSelect li > a').on('click', function() {
			$('#guSelectBtn').text($(this).text());
			var area = $(this).attr('value');
			//console.log('선택된 값: ' + area);

			$('#guSelectBtn').attr('data-guselect', area);
		});

		// 2-B.시/군 선택(경기도)
		$('#siSelect li > a').on('click', function() {
			$('#siSelectBtn').text($(this).text());
			var area = $(this).attr('value');
			//console.log('선택된 값: ' + area);

			$('#siSelectBtn').attr('data-siselect', area);
		});
		
		/* 검색 버튼 누를 시 json 받아와서 검색 메소드(find(data)) 실행 */
		$("#okBtn").click(function() {
			$.ajax({
				url : "zipXML.do",
				method : "POST",
				dataType : "json",
				data : {

				},
			}).done(function(data) {
				
				find(data);

			});

		});
		
		//카테고리 서울, 경기 선택 시 버튼 숨겼다 보여주기 하기위한 자바스크립트
		/* 검색 메소드 */
		function find(data) {

			/* 변수 searchArea(검색어) =  선택한 시/도 + 시/군/구 값 */
			var searchArea = $('#locationSelectBtn').attr('data-siordo');

			searchArea += ' ';

			if (searchArea.indexOf("서울") > -1) {
				//조건 : 만약 '서울'이 포함되어 있다면 -> '구' value 더하기
				searchArea += $('#guSelectBtn').attr('data-guselect');

			} else {
				//조건 : 만약 '서울'이 포함되어 있지 않다면(경기도) -> '시/군' value 더하기
				searchArea += $('#siSelectBtn').attr('data-siselect');
			}

			//이전 결과가 남아있을 수 있는 출력 창(#resultArea)을 깨끗이 비움
			$("#resultArea").empty();
				
			for (var i = 0; i < 243; i++) {

				var item = data.response.body.items.item[i];

				if (item.careAddr.indexOf(searchArea) > -1) {
					
					var aTag = "<a id='"+ i +"' href='#' style='text-decoration: none; color:black;'>";
					
					$("#resultArea").append("<li>" + aTag + item.careNm + "<br>" + "주소: " + item.careAddr + "<br>");
					if(item.saveTrgtAnimal == null){
					}else{
						$("#resultArea").append("구조동물: ");
						var textarr = data.response.body.items.item[i].saveTrgtAnimal
								.split("+");
						for (var j = 0; j < textarr.length; j++) {
							$("#resultArea").append(textarr[j] + ". ");
						}
					}
					
					$("#resultArea").append("</a></li>");
					$("#resultArea").append("<hr>");
				}

				//item 배열에 api로 받아온 데이터 json객체 하나씩 넣기
				itemArr[i] = item;
			}
		}
		
		
		//동적으로 추가된 li태그들(보호시설 리스트들)에 이벤트 바인딩
		$("ul").on("click", "li", function() {
			var selectedItemId = $(this).children().attr('id');
			
			var selectedAddr = itemArr[selectedItemId].careAddr;
			var selectedCareNm = itemArr[selectedItemId].careNm;
			var selectedCareTel = itemArr[selectedItemId].careTel;
			var selectedSaveTrgtAnimal = itemArr[selectedItemId].saveTrgtAnimal;
			
			
			
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
			        if(selectedSaveTrgtAnimal == null){
			        	var infowindow = new kakao.maps.InfoWindow({
			        		/* content: '<div style="width:350px;text-align:center;padding:6px 0;">'
			            			+ selectedCareNm +"<br>"+ selectedAddr +"<br>Tel. "+ selectedCareTel + '</div>' */
			            	content:'<div class="card text-white bg-success" style="width: 370px;; text-align:center; padding:10px 0;">'+
						        	 '<div class="card-body">'+
						        	  '<h5 class="card-title">'+selectedCareNm+'</h5>'+
						        	  '<p class="card-text">'+selectedAddr+"<br>Tel. "+selectedCareTel+'</p>'+
						        	 '</div>'+
						        	'</div>'
			        	});
			        	
			        } else {
			        	var infowindow = new kakao.maps.InfoWindow({
			        		content:'<div class="card text-white bg-success" style="width: 370px;; text-align:center; padding:10px 0;">'+
				        	 '<div class="card-body">'+
				        	  '<h5 class="card-title">'+selectedCareNm+'</h5>'+
				        	  '<p class="card-text">'+selectedAddr+"<br>Tel. "+selectedCareTel+ "<br>구조대상동물 : "+ selectedSaveTrgtAnimal+'</p>'+
				        	 '</div>'+
				        	'</div>'
			        	
			        	});
			        	
			        }	
			        	
			        
			        infowindow.open(map, marker);
		
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    }
			});
			
		});
		
	});
	
		


	//서울시/경기도 선택 시 버튼 보여주는 용도
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

	<div class="row">
		<h1 class="mt-2">동물 보호소 찾기</h1>
		<div id="horisonLine"></div>
		
	</div>
	
	<div class="row">
	
		<!-- 좌측 카테고리 선택 및 검색 영역 -->
		<div class="col-4 border border-3 rounded" id="resultDiv"
			style="height: 700px;">

			<!-- 카테고리 선택 부분 -->
			<div class="row" >

				<div class="dropdown mt-3 col btn-group" style=" margin: 0 auto;">
					<a class="btn btn-success dropdown-toggle ms-2" role="button" 
					
						id="locationSelectBtn" data-bs-toggle="dropdown"
						aria-expanded="false" data-siordo="">지역 선택</a>
						
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink"
						id="locationSelect">
						
						<li><a class="dropdown-item" href="javascript:seoulSelect();"
							value="서울특별시">서울시</a></li>
						<li><a class="dropdown-item"
							href="javascript:gyeonggiSelect();" value="경기도">경기도</a></li>
					</ul>
				</div>

				<div class="dropdown mt-auto col text-left btn-group" id="seoulSelect">
					<a class="btn btn-success dropdown-toggle" href="#" role="button"
						id="guSelectBtn" data-bs-toggle="dropdown" aria-expanded="false"
						data-guselect=""> 구 선택 </a>
					<ul class="dropdown-menu locationSelect" id="guSelect"
						aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#" value="강동구">강동구 </a></li>
						<li><a class="dropdown-item" href="#" value="관악구">관악구 </a></li>
						<li><a class="dropdown-item" href="#" value="광진구">광진구 </a></li>
						<li><a class="dropdown-item" href="#" value="노원구">노원구 </a></li>
						<li><a class="dropdown-item" href="#" value="도봉구">도봉구</a></li>
						<li><a class="dropdown-item" href="#" value="동대문구">동대문구 </a></li>
						<li><a class="dropdown-item" href="#" value="마포구">마포구</a></li>
						<li><a class="dropdown-item" href="#" value="서초구">서초구 </a></li>
						<li><a class="dropdown-item" href="#" value="성동구">성동구 </a></li>
						<li><a class="dropdown-item" href="#" value="양천구">양천구 </a></li>
						<li><a class="dropdown-item" href="#" value="영등포구">영등포구 </a></li>
						<li><a class="dropdown-item" href="#" value="용산구">용산구 </a></li>
					</ul>
				</div>

				<div class="dropdown ms-auto mt-auto col text-left btn-group" id="gyeonggiSelect">
					<a class="btn btn-success dropdown-toggle" href="#" role="button"
						id="siSelectBtn" data-bs-toggle="dropdown" aria-expanded="false"
						data-siselect=""> 시 선택 </a>
					<ul class="dropdown-menu locationSelect" id="siSelect"
						aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#" value="가평군">가평군 </a></li>
						<li><a class="dropdown-item" href="#" value="고양시">고양시 </a></li>
						<li><a class="dropdown-item" href="#" value="광주시">광주시 </a></li>
						<li><a class="dropdown-item" href="#" value="부천시">부천시 </a></li>
						<li><a class="dropdown-item" href="#" value="성남시 ">성남시 </a></li>
						<li><a class="dropdown-item" href="#" value="수원시">수원시 </a></li>
						<li><a class="dropdown-item" href="#" value="시흥시">시흥시 </a></li>
						<li><a class="dropdown-item" href="#" value="안산시">안산시 </a></li>
						<li><a class="dropdown-item" href="#" value="양주시">양주시 </a></li>
						<li><a class="dropdown-item" href="#" value="양평군">양평군 </a></li>
						<li><a class="dropdown-item" href="#" value="용인시">용인시 </a></li>
						<li><a class="dropdown-item" href="#" value="파주시">파주시</a></li>
						<li><a class="dropdown-item" href="#" value="평택시">평택시 </a></li>
						<li><a class="dropdown-item" href="#" value="하남시">하남시 </a></li>
					</ul>
				</div>
				
				
				<!-- 검색버튼 -->
				<div class="dropdown ms-auto mt-auto col text-left">
					<a class="btn btn-outline-success" role="button" id="okBtn"
						data-bs-toggle="dropdown" aria-expanded="false">
						<ion-icon name="search-outline" style="font-size:15pt;"></ion-icon>
						</a>
				</div>
				
			</div>

			<hr>  <!-- 구분선 -->
			
			
			<!-- 보호시설 리스트 출력할 div -->
			<div class="row mt-1 ms-2" id="resultAreaDiv" style="height: 600px; padding:10px;">
				<ul id="resultArea"></ul>
			</div>
			
			
			
		</div>
	
	
		<!-- 지도 시작 -->
		<!-- 지도 화면 띄우는 영역 div -->
		<div id="map" class="col-8 border border-2 rounded" ></div>
		

				

	</div>
</div>



	<!-- 카카오 지도 api 사용 위한 script 코드 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3fdd8e02dcb3d23798f0ddaa0d9352bf&libraries=services,clusterer,drawing"></script>
	
	<!-- 지도 부분 -->
	<script type="text/javascript">
		
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
	
	
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    }
		});    
		
	</script>
















<%@ include file="../includes/footer.jsp"%>
