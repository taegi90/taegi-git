<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.security.SecureRandom"  %>
<%@ page import="java.math.BigInteger"  %>
<%@ page import="java.net.URLEncoder"  %>
<%
String client_id = "QI9nhKdLYdgGZ21jz2ay";
String redirectURI = URLEncoder.encode("http://localhost:8080/naverCallback.jsp");
SecureRandom random = new SecureRandom();
String state = new BigInteger(130, random).toString(32);
session.setAttribute("state", state);

String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id="+client_id+"&redirect_uri="+redirectURI+"&state="+state;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--부트 스트랩 관련 파일-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap&subset=korean" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" type="text/css" href="css/login/loginForm.css">
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script type="text/javascript" src="js/login/loginFormScript.js"></script>
    <script>
    function loginWithNaver(){
    	window.open('<%=apiURL%>', '_blank', 'width=400, height=400,scrollbar=no,status=no');
	}
   
    $(function() {
	    $("#password").keyup(function(e){
	    	if(e.keyCode == 13)  $(".loginbutton").trigger("click");
	    });
   	});
    
    </script>
</head>
<style>

	*{
    	margin: 0; padding: 0;
	}
	.wrap{
	    width: 1200px;
	    margin: 0 auto;
	  
	}
	
	.header{
	    background-color:white; height: 180px; width: 100%; 
	    color: black; text-align: center; line-height: 100px;
	}
	.title{
	   width: 1200px;
	   height: 150px;
	    text-align: center;
	}
	.t1 > a {
	    font-family: 'Noto Sans KR', sans-serif;
	    font-size: 40px;
	    font-weight: 700;
	    color: #6d512f;
	    margin-right: 8px;
	    text-decoration: none;
	}
	.t2{
	    font-family: 'Noto Sans KR', sans-serif;
	    font-size: 40px;
	    font-weight: 700;
	    color:black;
	    margin-right: 8px;
	}
	.t3{
	    font-family: 'Noto Sans KR', sans-serif;
	    font-size: 18px;
	    color: #666666;
	    line-height: 54px
	}
	.main{
	position: relative;
	    float: left;
	     width: 1200px;
	   height: 400px;
	}
	.email1{
	position: relative;
	 width: 1200px;height: 400px;
	}
	.email1 > .email2{
	    position: relative;
	    float: left;
	    font-size: 14px;
	    font-weight: bold;
	
	}
	.click{
	    display: flex;
	    border-radius: 50px 50px 50px 50px;
	}
	.click:hover{
		box-shadow: 0 1px 10px rgba(0,0,0,0.5);
	}
	
   
	
	.cafeperson:hover{
	    box-shadow: 0 1px 10px rgba(0,0,0,0.5);
	}
	.join-person{
	    position: relative;
	    top:5px;
	   
	    flex: 1 1 auto;
	    position: relative;
	    top:3px;
	    
	}
	.emailaddress{
	    
	    font-size: 16px;
	    width: 380px;
	    height: 52px;
	    color: rgb(33, 33, 33);
	    background-color: transparent;
	    border-top:0 solid black;
	    border-left:0 solid black;
	    border-right:0 solid black;
	    text-align: left;
	    outline:none;
		
	}
	.pass1 > .pass2{
	    position: relative;
	    float: left;
	    font-size: 14px;
	    font-weight: bold;

	}
	
	.password{
	    font-size: 16px;
	    width: 380px;
	    height: 60px; 
	    color: rgb(33, 33, 33);
	    background-color: transparent;
	    border-top:0 solid black;
	    border-left:0 solid black;
	    border-right:0 solid black;
	    text-align: left;
	    outline:none;
	    padding: 8px 0px;
	}
	 
	.loginbutton{
	    font-size: 16px;
	    width: 140px;
	    min-width: 140px;
	    height: 52px;
	    line-height: 50px;
	    background-color: #6d512f;
	    color: rgb(255, 255, 255);
	    padding: 0px;
	    border-radius: 26px;
	    border-width: initial;
	    border-style: none;
	    border-color: initial;
	    border-image: initial;
	    transition: background-color 0.3s ease 0s;
	    z-index: 1;
	}
	.joinbutton{
	    font-size: 16px;
	    width: 140px;
	    min-width: 140px;
	    height: 52px;
	    line-height: 50px;
	    background-color: rgb(127, 128, 129);
	    color: rgb(255, 255, 255);
	    padding: 0px;
	    border-radius: 26px;
	    border-width: initial;
	    border-style: none;
	    border-color: initial;
	    border-image: initial;
	    transition: background-color 0.3s ease 0s;
	    z-index: 1;
	}
	.loginbutton:hover{
		box-shadow: 0 1px 10px rgba(0,0,0,0.5);
	}
	.joinbutton:hover{
		box-shadow: 0 1px 10px rgba(0,0,0,0.5);
	}
	.footer{
	    font-family: 'Noto Sans KR', sans-serif;
	    position: relative;
	    font-size: 14px;
	    top:80px;
	    color: rgb(168, 167, 168);
	    text-align: center;
	    word-break: keep-all;
	
	 
	 
	 
	  .find > a{ 
	 text-decoration:none;
	 color:#6E6E6E; 
	 } 
</style>
<body>

    <div class="wrap">
    <div class="header"></div>
    <div class="title">
	<span class="t1">
	<a href="/index.do" class="join-title">개인</a>
	</span>  
	<span class="t2">프로젝트</span>
	<p class="t3">로그인 해주세요.</p>    
      
	<form id="login" action = "/loginProcess.do" method="post">
        <div class="main">
            <label class="email1">
                <span class="email2">
                    아이디&nbsp;
                </span>
                    <div class="emailaddress">
                <input name="email" id="email" required autocomplete="new-password" 
                placeholder="이메일을 입력해주세요." class="emailaddress">    
                
                </div>
            </label>
        </div>
        <br>
       
        <div class="main">
                <label class="pass1">
                    <span class="pass2">
                       비밀번호&nbsp;
                    </span>
                    <div class="first-pass">
                       <div class="input-pass">
                       <input name="password" id="password" type="password" minlength="10" maxlength="20" 
                       required placeholder="비밀번호를 입력해주세요 " class="password">
                    </div>
                </div>
                </label>   
		</div>
		</form>
		<br>
		<br>
		
			<div class="button1-select">
	            <button type="button" class="loginbutton" onclick = "javascript:loginForm();">로그인</button>
	            <button type="button" class="joinbutton" onclick = "location.href='/join_step1.do'">회원가입</button>
	        </div>
	        <br>
	      <div class="find">
          		<a href="/findId_step1.do">아이디 찾기</a>&nbsp;| &nbsp;<a href="/findPwd_step1.do">비밀번호 찾기</a> | &nbsp;<a href="/adminLoginForm.do">관리자 로그인</a>
    		</div>  
			<div class="footer">
		        <p>Copyright © CAFE 태기 All Rights Reserved.</p>
		    </div>
			</div>
		 </div>
	
	
		
	
</body>
</html>