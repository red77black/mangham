<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
  <!-- 자바스크립트 번역 -->
  <script src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#translate").on("click",function(){
				var source = $("#source").val();
				var target = $("#target").val();
				var text = $("#text").val();

				$.ajax({
					url : 'translate',
					type : 'post',
					data : {
						source : source,
						target : target,
						text : text
					},
					success : function(data){
						//JSON 형태의 문자열을 JSON 객체로 변환
						var jsonObject = JSON.parse(data);
						console.log(jsonObject);
						
						$("#translatedText1").html(jsonObject.message.result.translatedText);
					},
					error : function(e){
						console.log(e);	
					}
				});
				
			});
		});
	</script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    <title>SuSoo</title>
  </head>
  <body>
  	<!-- nav var -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-info">
		<div class="container-fluid">
			<a class="navbar-brand fs-3 fw-bold" href="home">SuSoo</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link fw-bolder" href="home">번역창</a>
					</li>
					<li class="nav-item"><a class="nav-link fw-bolder"
						href="/word/wordNote">단어장</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link fw-bolder"
						href="/user/logout">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link fw-bolder"
						href="/user/myPage">마이페이지</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 번역 -->
	<div class="row mt-5">
		<div class="col-sm-6">
			<div class="container">
				<div class="card mx-5 me-0">
					<div class="card-body">
						<div>
							<span class="fw-bolder">번역할 언어</span> <select id="source">
								<option value="ko">한국어</option>
								<option value="en">영어</option>
								<option value="ja">일본어</option>
								<option value="es">스페인어</option>
								<option value="fr">프랑스어</option>
							</select>
						</div>
						<div class="mt-2">
							<div class="form-floating">
								<textarea class="form-control" style="height: 250px;"
									placeholder="Leave a comment here" id="text"></textarea>
								<label for="floatingTextarea">번역할 내용을 입력하세요.</label>
							</div>
						</div>
						<button type="button"
							class="btn btn-info btn-lg mt-2 text-light fw-bolder"
							id="translate">번역하기</button>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="container">
				<div class="card mx-0 me-5">
					<div class="card-body">
						<div>
							<span class="fw-bolder">번역된 언어</span> <select id="target">
								<option value="ko">한국어</option>
								<option value="en" selected="selected">영어</option>
								<option value="ja">일본어</option>
								<option value="es">스페인어</option>
								<option value="fr">프랑스어</option>
							</select>
						</div>
						<div class="mt-2">
							<div class="form-floating" id="translatedText">
								<textarea class="form-control" style="height: 250px; background-color: white;" readonly="readonly"
									placeholder="Leave a comment here" id="translatedText1"></textarea>
								<!--  <label for="floatingTextarea"></label>-->
							</div>
							<!--  <button type="button" class="btn btn-info btn-lg mt-2 text-white">+단어장 저장</button>-->
						</div>
						<button type="button"
							class="btn btn-info btn-lg mt-2 text-light fw-bolder">단어저장</button>
							<button type="button"
							class="btn btn-info btn-lg mt-2 text-light fw-bolder">후리가나</button>
							<button type="button"
							class="btn btn-info btn-lg mt-2 text-light fw-bolder">발음듣기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br><br><br><br>
	<!-- footer -->
	<div class = "text-center">
		<hr />
		<p>2021 SCIT, SuSoo Project</p>
		イ·スヨン<br>
		コ·ビョンス
	</div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
    -->
  </body>
</html>
