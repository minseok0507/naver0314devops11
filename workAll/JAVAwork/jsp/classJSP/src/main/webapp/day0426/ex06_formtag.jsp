<%--
  Created by IntelliJ IDEA.
  User: minseok
  Date: 24. 4. 26.
  Time: 오전 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }
    </style>
    <title>Title</title>
</head>
<body>
<h5>JSP 폼태그 읽기</h5>
<form action="ex06_action.jsp" method="get">
    이름 : <input type="text" name="name" id="name" required> <br><br>
    사진 :
    <select name="photo" id="photo">
        <option value="../img/star/17.jpg">신민아</option>
        <option value="../img/star/18.jpg">설현</option>
        <option value="../img/star/19.jpg">신세경</option>
        <option value="../img/star/20.jpg">수지</option>
    </select>
    <br><br>
    <input type="image" src="../img/mycar/mycar11.png" width="70">
    <button><img src="../img/mycar/mycar11.png" style="width: 70px;"></button>


</form>
</body>
</html>
