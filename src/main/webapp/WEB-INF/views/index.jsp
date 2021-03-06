<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> [ 로그인 ]</title>
    <link rel="stylesheet" href="/resources/css/style.css">
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
   <script type="text/javascript">
   $("#loginCheck").prop("checked", true);

   $("#loginCheck").prop("checked", false);
   $("#loginCheck").is(":checked")
   </script>
   <script type="text/javascript">
   function joinFormCheck(){
		location.href = "/user/joinForm";
	}
   function findIdFormCheck(){
		location.href = "/user/findIdForm";
	}
   function findPwFormCheck(){
		location.href = "/user/findPwForm";
	}

   window.onload = function(){
		var err = document.getElementById("err").value;
		
		if (err == null || err.length == 0) {
			return false;
		} else {
			alert('id 혹은 pw가 틀렸습니다.');
			document.location.href = "/";
		}
		return true;
	}

	
   </script>
  </head>
  <body>
      <div class="bg-img">
          <div class="content">
              <header>SuSoo</header>
              <form action="/user/login" method="post">
                  <div class="field">
                      <span class="fa fa-user"></span>
                      <input type="text" id="s_id" name="s_id" value="${s_id }" required placeholder="ID를 입력해 주세요.">
                  </div>
                  <div class="field space">
                      <span class="fa fa-lock"></span>
                      <input type="password" id="s_pw" name="s_pw" class="pass-key" required placeholder="Password">
                  </div>
                  <div class="pass">
                      <a>
                          <input type="checkbox" id="loginCheck" name = "loginCheck" value = "false">  ID 기억하기
                      </a>
                  </div>
                  <div class="field">
                      <input type="submit" value="LOGIN">
                  </div>
              </form>
              <input type="hidden" id="err" value="${errMsg }">
              <div class="field">
                  <input type="button" value="회원 가입" onclick="return joinFormCheck();">
              </div>

              <div class="findId">
                  <input type="button" value="ID 찾기" onclick="return findIdFormCheck();"/>
              </div>
              <div class="findPw">
                  <input type="button" value="PW 찾기" onclick="return findPwFormCheck();" />
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
