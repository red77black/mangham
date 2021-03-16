<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title> [ 회원가입 ] </title>
    <link rel="stylesheet" href="/resources/css/joinStyle.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script>
        function formCheck() {
            // 아이디 입력 
            var id = document.getElementById("s_id").value;

            if (id == null || id.length == 0) {
                alert("ID를 입력해 주세요.");
                return false;
            } else if (id.length < 5 || id.length > 12) {
                alert("ID는 5글자 ~ 12글자 사이로 입력해 주세요.");
                return false;
            }

            // 비밀번호 입력
            var pw = document.getElementById("s_pw").value;
            var pwCheck = document.getElementById("pw_check").value;

            if (pw == null || pw.length == 0) {
                alert("비밀번호를 입력해 주세요");
                return false;
            } else if (pw.length < 5 || pw.length > 12) {
                alert("비밀번호는 5글자 ~ 12글자 사이로 입력해 주세요.");
                return false;
            } else if (pw != pwCheck) {
                alert("동일한 비밀번호를 입력해 주세요.");
                return false;
            }

            // 이름 
            var nm = document.getElementById("s_name").value;

            if (nm == null || nm.length == 0) {
                alert("이름을 입력해 주세요");
                return false;
            } else if (nm.length < 2 || nm.length > 12) {
                alert("이름는 2글자 ~ 12글자 사이로 입력해 주세요.");
                return false;
            }
            return true;
        }
    </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
    <form action="" method="post" onsubmit="return formCheck();">
        <div class="bg-img">
            <div class="content">
                <header>SuSoo</header>

                <!-- 아이디 -->
                <div class="join-name">
                    <span class="red"> -</span> ID
                </div>
                <div class="field-id">
                    <input type="text" id="s_id" name="s_id" minlength="5" maxlength="12" title="ID를 입력해 주세요." required placeholder="  ID를 입력해 주세요."> <input type="button" id="check" value="중복 검사" />
                </div>

                <!-- 비밀번호 -->
                <div class="join-name">
                    <span class="red"> -</span> Password
                </div>
                <div class="field">
                    <input type="password" id="s_pw" name="s_pw" minlength="5" maxlength="12" title="비밀번호를 입력해 주세요."required placeholder="  PW를 입력해 주세요.">
                </div>

                <!-- 비밀번호 확인 -->
                <div class="join-name">
                    <span class="red"> -</span> <span> PW Check</span>
                </div>
                <div class="field">
                    <input type="password" id="pw_check" name="pw_check" title="비밀번호를 다시 입력해 주세요." required placeholder="  PW를 다시 입력해 주세요.">
                </div>

                <!-- 이름 -->
                <div class="join-name">
                    <span class="red"> -</span> <span> Name</span>
                </div>
                <div class="field">
                    <input type="text" id="s_name" name="s_name" title="이름을 입력해 주세요." required placeholder="  이름을 입력해 주세요.">
                </div>

                <!-- 이메일 -->
                <div class="join-name">
                    <span class="red"> -</span> <span> Email</span>
                </div>
                <div class="field">
                    <input type="email" id="s_email" name="s_email" title="Email을 입력해 주세요." required placeholder="  email을 입력해 주세요.">
                </div>

                <!-- 핸드폰 -->
                <div class="join-name">
                    <span class="red"> -</span> <span> Phone</span>
                </div>
                <div class="field">
                    <input type="text" id="s_phone" name="s_phone" pattern="(010)-\d{3,4}-\d{4}" title="핸드폰 번호 ex) 010-0000-0000" required placeholder="  핸드폰 번호를 입력해 주세요.">
                </div>
                <!--
    <div class="phone" >
        <input type="text" id="susoo_phone" name="susoo_phone" minlength="3" title="형식 010-0000-0000" required placeholder=" "> <img src="phone.png" id="phoneicon" name="phoneicon" /> <input type="text" id="phone" name="phone" minlength="4" required placeholder=" "> <img src="phone.png" id="phoneicon" /> <input type="text" id="phone" name="phone" minlength="4" required placeholder=" ">
    </div>
        -->
                <!-- 성별 -->
                <div class="join-name">
                    <span class="red"> -</span> <span> Gender</span>
                </div>
                <div class="radio">
                    <input type="radio" id="s_gender" name="s_gender" checked="checked">  <img src="male.png" id="gendericon" /> <span> 남자 </span>   <input type="radio" id="susoo_gender" name="susoo_gender"> <img src="female.png" id="gendericonF" />  <span> 여자 </span>
                </div>

                <!-- 리셋 / 회원가입 -->
                <div class="formbutton">
                    <input type="reset" value="초기화" /> <input type="submit" value="회원 가입" />
                </div>

            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
