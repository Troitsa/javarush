<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/styles.css" />"
	rel="stylesheet">
<title>Редактирование пользователя</title>
</head>
<body>
	
		<h2>Редактирование пользователя</h2>
		
		<div id="addForm">
		<form:form method="POST" action="edit" commandName="user">
			<p>
				<form:label path="id" class="labelsInput">ID</form:label>
				<form:input path="id" value="${user.id}" readonly="true" class="inputField"/>
			</p>
			<div style="clear: both"></div>
			<p>
				<form:label path="name" class="labelsInput">Имя</form:label>
				<form:input path="name" value="${user.name}" required="true" maxlength="25" class="inputField"/>
			</p>
			<div style="clear: both"></div>
			<form:errors path="name" cssClass="error" />
			<p>
				<form:label path="age" class="labelsInput">Возраст</form:label>
				<form:input path="age" value="${user.age}" required="true" maxlength="25" class="inputField"/>
			</p>
			<div style="clear: both"></div>
			<form:errors path="age" cssClass="error" />
			<p>
				<form:label path="admin" class="labelsInput">Администратор</form:label>
				<form:checkbox path="admin" value="${user.admin}" />
			</p>
			<div style="clear: both"></div>
			<p>
				<input type="submit" value="Сохранить" class="button">
			</p>
			<div style="clear: both"></div>
		</form:form>
		</div>
	
</body>

</html>