<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> [ 비밀번호 찾기 ] </title>
    <link rel="stylesheet" href="/resources/css/pwStyle.css">
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  </head>
  <body>
      <h1 class="ss-title"></h1>
      <div class="bg-img">

          <div class="content">
              <header>SuSoo</header>
              <form action="#">
                  <!-- 아이디 -->
                  <div class="join-name">
                      <span class="red"> -</span> ID
                  </div>
                  <div class="field">
                      <input type="text" id="s_id" name="s_id" minlength="5" maxlength="12" title="ID를 입력해 주세요." required placeholder="  ID를 입력해 주세요.">
                  </div>

                  <!-- 이메일 -->
                  <div class="join-name">
                      <span class="red"> -</span> <span> Email</span>
                  </div>
                  <div class="field">
                      <input type="email" id="s_email" name="s_email" title="Email을 입력해 주세요." required placeholder="  email을 입력해 주세요.">
                  </div>

                  <!-- 뒤로가기 / PW찾기 -->
                  <div class="formbutton">
                      <input type="button" value="뒤로가기" onclick="history.back(-1)" /> <input type="submit" value="PW 찾기" />
                  </div>
              </form>
          </div>
      </div>


  </body>
</html>
