<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <title>일반회원가입</title>
	<link rel="stylesheet" href="style.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
  <style type="text/css">


html {
    height: 100%;
}

body {
    margin: 0;
    height: 100%;
    background: white;
}
#logo {
    width: 465px;
    height: 85px;
    cursor: pointer;
}

#header {
    padding-top: 55px;
    padding-bottom: 2px;
    text-align: center;
}
#wrapper {
    position: relative;
    height: 100%;
}

#content {
    position: absolute;
    left: 50%;
    transform: translate(-50%);
    width: 300px;
    height: 40px;
}



/* 입력폼 */


h3 {
    margin: 5px 0 8px;
    font-size: 14px;
    font-weight: 700;
}
.sign-up{
	margin: 20px 0 20px;
	text-align: center;
	
}

.box {
    display: block;
    width: 100%;
    height: 40px;
    border: solid 1px #dadada;
    padding: 10px 14px 10px 14px;
    box-sizing: border-box;
    background: #fff;
    position: relative;
}

.int {
    display: block;
    position: relative;
    width: 100%;
    height: 20px;
    border: none;
    background: #fff;
    font-size: 15px;
}

input {
}

.box.int_id {
    padding-right: 110px;
}

.box.int_pass {
    padding-right: 100px;
}

.box.int_pass_check {
    padding-right: 100px;
}
.box.int_name {
    padding-right: 100px;
}
.pswdImg {
    width: 18px;
    height: 20px;
    display: inline-block;
    position: absolute;
    top: 50%;
    right: 16px;
    margin-top: -10px;
    cursor: pointer;
}

/*
select {
    width: 100%;
    height: 29px;
    font-size: 15px;
    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
    background-size: 20px 8px;
    -webkit-appearance: none;
    display: inline-block;
    text-align: start;
    border: none;
    cursor: default;
    font-family: Dotum,'돋움',Helvetica,sans-serif;
}
*/

/* 에러메세지 */

.error_next_box {
    margin-top: 9px;
    font-size: 12px;
    color: red;    
    display: none;
}

#alertTxt {
    position: absolute;
    top: 19px;
    right: 38px;
    font-size: 12px;
    color: red;
    display: none;
}

/* 버튼 */

.btn_area {
    padding-top: 10px;
}

#btnJoin {
    width: 30%;
    higher: 10px;
    padding: 10px 0 10px;
    border: 0;
    cursor: pointer;
    background-color: #007bff;
    color: #ffffff;
    font-size: 14px;
    margin:auto;
    
}
#btnCancle {
    width: 30%;
    higher: 10px;
    padding: 10px 0 10px;
    border: 0;
    cursor: pointer;
    background-color: #007bff;
    color: #ffffff;
    font-size: 14px;
    margin:auto;
    
}



}
  </style>      
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <img src="resources/images/logo2.jpeg" id="logo">
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">
            
            <!-- Radio Button -->
            <div>
	            <h3 class="sign-up">
					<input type="radio" id=com name="chk_info" value="common">일반회원
					<input type="radio" id=shel name="chk_info" value="shelter" >보호소회원
				</h3>
			</div>
                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    <span class="box int_id">
                        <input type="text" id="id" class="int" maxlength="20">
                    
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="text" id="pswd2" class="int" maxlength="20">
                        <img src="m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NICKNAME -->
                <div>
                    <h3 class="join_title"><label for="nickname">닉네임</label></h3>
                    <span class="box int_nickname">
                        <input type="text" id="nickname" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>



                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                
                <!-- ADDRESS -->
                <div>
                    <h3 class="join_title"><label for="address">주소</label></h3>
                    <span class="box int_address">
                        <input type="text" id="address" class="int" maxlength="100">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">본인확인 이메일<span class="optional">(선택)</span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>

                <!-- JOIN BTN-->
                <div class="btn_area" style="text-align: center;">
                    <button type="button" id="btnJoin" >
                        <span>확인</span>
                    </button>
                    <button type="button" id="btnCancle" value="취소" 
                    onclick="location.href='login.do'">취소

                    </button>
                </div>

                

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
    <script src="index.jsp"></script>
    </body>
    
      <!-- 여기는 footer -->
			
</html>

