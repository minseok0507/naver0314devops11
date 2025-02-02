<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
   <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
   <style>
       body *{
           font-family: 'Jua';
       }
       .main-img{
          display: flex;
          justify-content: space-around;
          flex-direction: row;
          flex-wrap: wrap;
       }

       .main-img > img{
          margin: 10px 0;
       }
   </style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath()%>"/>

<h1>${session}</h1>
<div class="main-img">
   <img src="${root}/food/1.jpg" alt="" width="300">
   <img src="${root}/food/2.jpg" alt="" width="300">
   <img src="${root}/food/3.jpg" alt="" width="300">
   <img src="${root}/food/4.jpg" alt="" width="300">
</div>
</body>
</html>
