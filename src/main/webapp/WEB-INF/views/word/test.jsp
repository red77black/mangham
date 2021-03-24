<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<select name="wordList" id="wordList">
<option value="0">--선택해주세요--</option>
<c:forEach items="${wordList }" var="wordlist">
<option value="${wordlist.wordlist_num }">${wordlist.title }</option>
</c:forEach>
</select>
</body>
</html>