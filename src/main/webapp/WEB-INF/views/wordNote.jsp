<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
<html lang="en">
  <head>
  <script type="text/javascript">
  
			function logout() {
				if (confirm("로그아웃 하시겠습니까?")) {
					location.href = "/user/logout";
				}
			}
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
			<a class="navbar-brand fs-3 fw-bold" href="/home">SuSoo</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link fw-bolder"
						href="/home">번역창</a></li>
					<li class="nav-item"><a class="nav-link fw-bolder"
						href="/word/wordNote">단어장</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link fw-bolder" href="#"
						onclick="return logout();">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link fw-bolder"
						href="/user/myPage">마이페이지</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- content -->
	<div class="container">
		<div class="row mt-2" style="background-color: #f8f9fa">
			<div class="row row-cols-1 row-cols-md-3 g-4 text-center mb-5 mx-auto" style="width: 400px">
				<div class="col">
					<div class="card h-100">
						<div class="card-body">
							<h5 class="card-title fw-bold"><a href="/word/words" style="color: black; text-decoration: none;">전체</a></h5>
						</div>
						<div class="card-footer">
							<small class="text-muted fw-bolder">234</small>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<div class="card-body">
							<h5 class="card-title fw-bold"><a href="/word/words" style="color: black; text-decoration: none;">미암기</a></h5>
						</div>
						<div class="card-footer">
							<small class="text-muted fw-bolder">233</small>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<div class="card-body">
							<h5 class="card-title fw-bolder"><a href="/word/words" style="color: black; text-decoration: none;">암기</a></h5>
						</div>
						<div class="card-footer">
							<small class="text-muted fw-bolder">1</small>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row mt-2">
			<div class="col" style="background-color: #f8f9fa">
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">단어장 목록</th>
							<th scope="col"></th>
							<th scope="col"></th>
							<th scope="col" class="text-end">
								<img alt="plus" src="/resources/img/plus.png">
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row"><a href="/word/words" style="color: black; text-decoration: none;">명사</a></th>
							<td></td>
							<td></td>
							<td class="text-end">
								<img alt="plus" src="/resources/img/trashcan.png">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
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