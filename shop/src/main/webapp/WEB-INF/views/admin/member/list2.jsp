<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../../include_main/header_css.jsp"/>
</head>
<body>
 <div class="wrapper">
   <div class="wrap-sidebar">
<jsp:include page="../../include_main/header.jsp"/>
<div class="banner-area hm1-banner pt-130 pb-107">
                <div class="container">
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
<c:forEach var="vo" items="${list}">
<div>${vo.userId }</div>
<div>${vo.email }</div>
<div>${vo.regDate }</div>
</c:forEach>
</div>
</div>

 <jsp:include page="../../include_main/footer.jsp"/>
<jsp:include page="../../include_main/footer_js.jsp"/>
</div>
</div>
</body>
</html>