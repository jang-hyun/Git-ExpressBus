<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">

<head>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
</head>

<body>
	<form id = "findFrm" name = "frm" method="post" action="https://script.google.com/macros/s/AKfycbzSS10y5tYu7ulS3OVCQyTgFcpYoNQcgokfa20p7Q/exec">
		<input type = "hidden" name = "Timestamp" id = "Timestamp">
		name <input type = "text" name = "name" id = "name" value = "!!">
		<br>
		msg <input type = "text" name = "message" id = "message" value = "!!">
		<br>
		email <input type = "text" name = "email" id = "email" value = "!!">
		<br>
		<input type = "submit" id = "btnSubmit">
	</form>
</body>
<script>
	$("#btnSubmit").click(function(e) {
		e.preventDefault();
		$.ajax({
			type : "post",
			url : "/final/user/findPw",
			data : {"address" : $("#email").val()},
			success : function(data) {
				alert(data);
			}
		})
	});
</script>
</html>