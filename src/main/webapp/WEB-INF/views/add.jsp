<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/styles.css" />"
	rel="stylesheet">
<title>Добавить пользователя</title>
</head>
<body>
	<h2>Добавить пользователя</h2>
	
		<div id="addForm">
			<form:form method="POST" action="add" commandName="user">
				<p>
					<form:label path="name" class="labelsInput">Имя</form:label>
					<form:input path="name" required="true" class="inputField"
						maxlength="25" />
				</p>
				<div style="clear: both"></div>
				<form:errors path="name" cssClass="error" />
				<p>
					<form:label path="age" class="labelsInput">Возраст</form:label>
					<form:input path="age" required="true" class="inputField"
						maxlength="25" />
				</p>
				<div style="clear: both"></div>
				<form:errors path="age" cssClass="error" />
				<p>
					<form:label path="admin" class="labelsInput">Администратор</form:label>
					<form:checkbox path="admin" />
				</p>
				<p>
					<input type="submit" value="Add" class="button">
				</p>
				<div style="clear: both"></div>
			</form:form>
		</div>

</body>
</html>