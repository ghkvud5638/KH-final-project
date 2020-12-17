<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="content-type" content="text/html; charset=EUC-KR">
  <style>
  body, td { font-size: 13px }
  #disableDiv { position:absolute; left:0; top:0;width:100%; height:100%; z-index:995 ; background-color:#EEEEEE; filter:Alpha(opacity=80);opacity:0.8; -moz-opaciry:0.8}
  #loadingDiv { position:absolute; left:50; top:100;width:200px; height:200px; z-index:999; background-color:#FFFFFF;};
  </style>
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
  
  <script>
   function disableActive(){
    
    var  disableDivObj = document.getElementById("disableDiv");
    disableDivObj.style.display = "";
    var  loadingDiv = document.getElementById("loadingDiv");
    loadingDiv.style.display = "";
        
   } 
   
   function reset(){
    var  disableDivObj = document.getElementById("disableDiv");
    disableDivObj.style.display = "none";
    var  loadingDiv = document.getElementById("loadingDiv");
    loadingDiv.style.display = "none";
   }
   
   $(document).ready(function(){
	   $('#button').click(function(){
		   alert("클릭")
			$.ajax({
				type: "POST" //요청 메소드
				, url: "/main/login" //요청 URL
				, data: {
							"member_id" : $('#member_id').val()
							,"member_pw" : $('#member_pw').val()
							
						} //전달 파라미터
				, dataType: "html" //응답받은 데이터의 형식
				, success: function( res ) {
					console.log("성공")
					$('.nav').trigger("click");
					$('.nav').trigger("click");
	
				}
				, error: function() {
					console.log("실패")
				}
				
			})	
		
	   })
	   $('#logoutBtn').click(function(){
		   alert("클릭")
		$(".Nav-sideMenu-listViewListDiv").load("/main/logout");
		   $('.nav').trigger("click");
			$('.nav').trigger("click");
		
	   })
	   
   })
  </script>
 </head>
 <body>
  <div id="container" class="xb">
  <c:if test="${login eq true }">
  	${member_id }님 로그아웃 하실래여?<br>
	<button id="logoutBtn">로그아웃</button>
  
  </c:if>
  <c:if test="${login ne true }">
		<div id="content">
				<div id="main-login-wrap">
					<h1 class="main-login-member">member login</h1>
					<div class="main-login-form">
						<div class="main-login-form2">
							<div class="main-login-form3">
								<label for="user">아이디</label><input type="text" id="member_id" name="member_id">
								<div class="main-login-clear"></div>
								<label for="user">비밀번호</label><input type="password" id="member_pw" name="member_pw" >
							</div>
<!-- 							<input type="submit" value="로그인하기"> -->
								<button id="button">로그인</button>
								
							<div class="main-login-clear"></div>
							<div class="main-login-form4">
<!-- 								<label><input type="checkbox">아이디저장</label> <label><input -->
<!-- 									type="checkbox">보안접속</label> -->
								<div class="main-login-clear"></div>
			
							</div>
						</div>
					</div>
				</div>
		</div>
  </c:if>
	</div>
	
 </body>
</html>
