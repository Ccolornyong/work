<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	form {margin-top: 50px;}
	div {text-align: center;}
	a {text-decoration: none;}
	div input {width: 600px; margin: 20px;}
	ul {text-align: center;}
	#a {width: 90%; padding: 20px; margin: auto; border: 2px solid skyblue;}
	#title {font-size: 18pt;}
</style>
<script type="text/javascript">
	function formCheck(){
		var value = $("#b_emp").val();
		if(value==null || value.trim().length==0){
			alert('계정명은 반드시 입력해야 합니다.');
			$("#b_emp").val("");
			$("#b_emp").focus();
			return false;
		}
		var value = $("#b_pw").val();
		if(value==null || value.trim().length==0){
			alert('비밀번호는 반드시 입력해야 합니다.');
			$("#b_pw").val("");
			$("#b_pw").focus();
			return false;
		}
		return true;
	}
</script>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
	<form action="loginOk.jsp" method="post" onsubmit="return formCheck();">
		<div id="a">
			<div id="title">
				로그인
			</div><br />
			<div class="form-group row">
				<label for="b_emp" class="col-sm-2 col-form-label">계정명</label>
				<div class="col-sm-10"> 
					<input type="text" name="b_emp" id="b_emp" class="form-control">
				</div><br /><br />
				<label for="b_pw" class="col-sm-2 col-form-label">비밀번호</label>
				<div class="col-sm-10"> 
					<input type="password" name="b_pw" id="b_pw" class="form-control">
				</div><br /><br />
			</div>
			<div id="sub">
				<button type="submit" class="btn btn-primary">login</button>
			</div>
		</div>
	</form><br /> 
	<ul class="nav justify-content-center">
	  	<li class="nav-item">
	    	<a class="nav-link active" href="home.jsp">홈</a>
	  	</li>
	</ul>
</body>
</html>