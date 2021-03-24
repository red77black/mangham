<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="/resources/css/listStyle.css">
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
   <script type="text/javascript">
		function formCheck(){
			alert("게시판을 생성하였습니다.");
			return true;
		}
   </script>
<title> [ 게시판 생성 폼 ]</title>
</head>
<body>
	 <div class="bg-img">
          <div class="content">
              <header>SuSoo</header>
              <form action="/word/wordList" method="post">
                  <!-- 게시판 이름 -->
                  <div class="join-name">
                      <span class="red"> -</span> <span> 게시판 이름</span>
                  </div>
                  <div class="field">
                      <input type="text" id="title" name="title" title="게시판 이름을 입력해 주세요." required placeholder=" 게시판 이름을 입력해 주세요.">
                  </div>
					
				  <input type="hidden" id="s_id" name="s_id" value="${sessionScope.s_id }">
                  <!-- 닫기 / 게시판 생성 -->
                  <div class="formbutton">
                      <input type="button" value="닫기" onclick="window.close();"/> <input type="submit" value="게시판 생성" onclick="return formCheck();"/>
                  </div>
              </form>
          </div>
      </div>
</body>
</html>