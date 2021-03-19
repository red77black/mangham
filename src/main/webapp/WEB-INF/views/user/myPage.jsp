<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Transparent Login Form UI</title>
    <link rel="stylesheet" href="myPageStyle.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script type="text/javascript">
        function logout() {
            if (confirm("로그아웃 하시겠습니까?")) {
                location.href = "/user/logout";
            }
        }
    </script>
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-info">
		<div class="container-fluid">
			<a class="navbar-brand fs-3 fw-bold" href="/">SuSoo</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link fw-bolder" href="#">번역창</a>
					</li>
					<li class="nav-item"><a class="nav-link fw-bolder"
						href="/word/wordNote">단어장</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link fw-bolder" href="#">로그아웃</a>
					</li>
					<li class="nav-item"><a class="nav-link fw-bolder"
						href="/word/MyPage">마이페이지</a></li>
				</ul>
			</div>
		</div>
	</nav>
			<div class="content1">
				<div class="mypage-main">
					<h3 class="header">My page</h3>
					<br />

					<table>
						<tr>
							<td width="120" height="45" class="line"><span class="red">
									-</span> ID</td>
							<td class="line"><span> dltndus </span></td>
						</tr>

						<tr>
							<td width="120" height="45" class="line"><span class="red">
									-</span> 이름</td>
							<td class="line"><span> 이수연 </span></td>
						</tr>

						<tr>
							<td width="120" height="45" class="line"><span class="red">
									-</span> Email</td>
							<td class="line"><span> dltndus03@naver.com </span></td>
						</tr>

						<tr>
							<td width="120" height="45" class="line"><span class="red">
									-</span> Phone</td>
							<td class="line"><span> 010-0000-0000 </span></td>
						</tr>

					</table>
				</div>
			</div>

			<div class="content2">
				<div class="mypage-sub">
					<h3 class="header">SuSoo</h3>
					<br />

					<table class="change">
						<tr>
							<td width="170" height="45"><span class="red-s"> -</span> <a
								class="a-tag" onclick="location.href='change-user.html'">
									회원정보 변경</a></td>
							<td width="170" height="45"><span class="red-s"> -</span> <a
								class="a-tag" onclick="location.href='change-password.html'">
									비밀번호 변경</a></td>
						</tr>
					</table>
					<br />
					<table class="word">
						<tr>
							<td width="130" height="100" class="text"><strong>모든
									단어</strong><br /> <input type="button" class="all-button"></td>
							<td width="130" class="text"><strong>미암기</strong><br /> <input
								type="button" class="mi-button"></td>
							<td width="130" class="text"><strong>암기</strong><br /> <input
								type="button" class="am-button"></td>
						</tr>
					</table>
				</div>
			</div>
		</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</html>
