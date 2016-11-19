<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/styles.css" />"
	rel="stylesheet">
<title>Пользователи</title>
</head>
<body>
	<h1>Пользователи</h1>
	<!--  Search -->
	<h2>Найти пользователя по имени / возрасту</h2>

	<div id="searchForm">
		<form method="POST" action="users/searchUser">

			<label class="labelsInput">Поиск</label> <input type='text'
				name='criteria' value='${criteria}' class="inputField"
				maxlength="25" />


			<div style="clear: both"></div>
			<input type="submit" value="Поиск" class="button">
			<div style="clear: both"></div>
		</form>
	</div>

	<!-- Add User -->
	<a href="<c:url value="/users/addUser"/>" id="newUserButton">Добавить пользователя</a>

	<!--  Table of Users -->

	<h2>Пользователи</h2>
	<table id="tableUsers">
		<tr id="tableHead">
			<th>ID</th>
			<th>Имя</th>
			<th>Возраст</th>
			<th>Администратор</th>
			<th>Дата создания</th>
			<th>Редактировать</th>
			<th>Удалить</th>
		</tr>

		<c:forEach items="${listUsers}" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.name}</td>
				<td>${user.age}</td>
				<td>
					<c:choose>
						<c:when test="${user.admin eq true}">
							Да
						</c:when>
						<c:otherwise>
							Нет
						</c:otherwise>
					</c:choose></td>
				<td>${user.createdDate}</td>
				<td><a href="<c:url value="/users/editUser/${user.id}"/>">Редактировать</a></td>
				<td><a href="<c:url value="/users/removeUser/${user.id}"/>">Удалить</a></td>
			</tr>
		</c:forEach>

		<!-- Paging -->

	</table>
	<table id="pageNumbers">
		<tr>
			<c:choose>
				<c:when test="${pageNum-1 < 1}">
					<td class="prevNextButton"><a
						href="<c:url value="/users?search=${criteria}&page=1"/>">Предыдущая</a></td>

				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${pageNum-1 > lastPageNum}">
							<td class="prevNextButton"><a
								href="<c:url value="/users?search=${criteria}&page=${lastPageNum}"/>">Предыдущая</a></td>
						</c:when>
						<c:otherwise>
							<td class="prevNextButton"><a
								href="<c:url value="/users?search=${criteria}&page=${pageNum-1}"/>">Предыдущая</a></td>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>

			<c:forEach items="${listOfPages}" var="number">
				<td><a
					href="<c:url value="/users?search=${criteria}&page=${number}"/>">${number}</a></td>
			</c:forEach>

			<c:choose>
				<c:when test="${pageNum+1 < 1}">
					<td class="prevNextButton"><a
						href="<c:url value="/users?search=${criteria}&page=1"/>">Следующая</a></td>

				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${pageNum+1 > lastPageNum}">
							<td class="prevNextButton"><a
								href="<c:url value="/users?search=${criteria}&page=${lastPageNum}"/>">Следующая</a></td>
						</c:when>
						<c:otherwise>
							<td class="prevNextButton"><a
								href="<c:url value="/users?search=${criteria}&page=${pageNum+1}"/>">Следующая</a></td>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</tr>
	</table>

</body>

</html>