<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<title>PhoneBook</title>

</head>


<body>
    <div class="container">
            <h1 style="text-align: center; font-family: arial, sans-serif;
                color: #ccccff; background-color: #666666">Телефонная книга</h1>
            <table class="table table-hover">
                <thead>
                  <tr class="active">
                  <th>№</th>
                  <th>ФИО</th>
                  <th>Телефон</th>
                  <th>Город</th>
                  <th>Адрес</th>
                  </tr>
                </thead>
                <tbody>
		
	
		<c:forEach items="${employees}" var="employee">
			<tr>
                        <td>${employee.id}</td>
			<td>${employee.name}</td>
			
			<td>${employee.phone}</td>
			<td>${employee.city}</td>
                        <td>${employee.address}</td>
                        </tr>
		</c:forEach>
            <tbody/>
	</table>
	<br/>
	
</body>
</html>