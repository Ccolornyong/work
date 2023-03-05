<%@page import="service.LogInService"%>
<%@page import="service.BrenchService"%>
<%@page import="vo.BrenchVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	String emp = request.getParameter("b_emp");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="brenchVO" class="vo.BrenchVO" scope="session"/>
	<jsp:setProperty property="*" name="brenchVO"/>
	<%
		int regChk =0;
		regChk = LogInService.getInstance().LogIn(brenchVO);
		if(regChk > 0) {
				BrenchVO sessionBrench = BrenchService.getInstance().selectByEmp(emp);
				session.setAttribute("user", sessionBrench.getB_emp());
				response.sendRedirect("home.jsp");
		} else {
			%>
			<script>
				alert("아이디,비번을 정확히 입력해 주세요.");
				history.back();
			</script>
			<%
		}
	%>
</body>
</html>