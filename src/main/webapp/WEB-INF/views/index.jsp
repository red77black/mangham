<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> [ Login ] </title>
    <link rel="stylesheet" href="/resources/css/style.css">
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
   <script type="text/javascript">
   function loginForm(){
		location.href = "home";
	}
   </script>
  </head>
  <body>
	<h1 class="ss-title"></h1>
	<div class="bg-img">

		<div class="content">
			<header>SuSoo</header>
			<form action="#">
				<div class="field">
					<span class="fa fa-user"></span> <input type="text" required
						placeholder="ID를 입력해 주세요.">
				</div>
				<div class="field space">
					<span class="fa fa-lock"></span> <input type="password"
						class="pass-key" required placeholder="Password"> <span
						class="show">SHOW</span>
				</div>
				<div class="pass">
					<a> <input type="checkbox" /> ID 기억하기
					</a>
				</div>
				<div class="field">
					<input type="submit" value="LOGIN" onclick="return loginForm();">
				</div>
			</form>
			<div class="field">
				<input type="button" value="회원 가입"
					onclick="location.href='join.jsp'">
			</div>

			<div class="findId">
				<input type="button" value="ID 찾기"
					onclick="location.href='findId.jsp'" />
			</div>
			<div class="findPw">
				<input type="button" value="PW 찾기"
					onclick="location.href='findPw.jsp'" />
			</div>
		</div>
	</div>
    <script>
      const pass_field = document.querySelector('.pass-key');
      const showBtn = document.querySelector('.show');
      showBtn.addEventListener('click', function(){
       if(pass_field.type === "password"){
         pass_field.type = "text";
         showBtn.textContent = "HIDE";
         showBtn.style.color = "#3498db";
       }else{
         pass_field.type = "password";
         showBtn.textContent = "SHOW";
         showBtn.style.color = "#222";
       }
      });
    </script>


  </body>
</html>
