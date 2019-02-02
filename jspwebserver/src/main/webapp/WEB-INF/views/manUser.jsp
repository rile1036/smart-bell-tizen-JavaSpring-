<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset = "UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>출근 전 1시간</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/dashboard.css">
        <link rel="stylesheet" href="css/custom.css">
        <style type="text/css">
 			a:link { color: black; text-decoration: none;}
 			a:visited { color: black; text-decoration: none;}
			a:hover { color: black; text-decoration: none;}
		</style>
    </head>
    <body>
    	<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">출근 전 1시간</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="manOrder">주문목록</a></li>
            <li><a href="manList">상품리스트</a></li>
            <li><a href="manUser">회원관리</a></li>
            <li><a href="manjob">직원관리</a></li>
            <li><a href="manStock">재고관리</a></li>
            <li><a href="manProfit">판매실적</a></li>
            <li><a href="/jspweb/">로그아웃</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar form-left-nav">
            <li><a href="manOrder">주문목록</a></li>
            <li><a href="manList">상품리스트</a></li>
            <li class="active"><a href="manUser">회원관리<span class="sr-only">(current)</span></a></li>
            <li><a href="manjob">직원관리</a></li>
            <li><a href="manStock">재고관리</a></li>
            <li><a href="manProfit">판매실적</a></li>
          </ul>
        </div>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <image class="img-responsive center-block img-rounded" src = "images/main_banner.jpg">
          <div class="form-subject">
                  회원관리
          </div>
          <hr class="form-hr">
                
          <div class="table-responsive">
            <table class="table table-striped">
              <thead class="form-thead">
                <tr>
                  <th>날짜 <a href="manUser">▼</a></th>
                  <th>ID</th>
                  <th>이름</th>
                  <th>생년월일</th>
                  <th>성별 <a href="manUserGender">▼</a></th>
                  <th>E-mail</th>
                  <th>전화번호</th>
                  <th>배송지</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="row" items="${list}">
	                <tr>
	                	<td>${row.regDate}</td>
	                	<td>${row.userID}</td>
	                	<td>${row.userName}</td>
	                	<td>${row.userBirth}</td>
	                	<td>${row.userGender}</td>
	                	<td>${row.userEmail}</td>
	                	<td>${row.userPhone}</td>
	                	<td>${row.userRegion}</td>
	                </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
          <form id="form_search" method="post" action="manUser"> 
		  <select id="sch_type" name="sch_type" style="height : 25px;"> 
		  	<option value="userID" selected="selected">아이디</option> 
		  	<option value="name">이름</option> 
		  </select>

          <input type = "text" id = "select" name = "select" />
          <button type = "button" onclick="search();">검색</button>
          </form>
        </div>
      </div>
     

		<script>
			function search(){ 
				var select = jQuery('#select').val(); 
				if (select == '') { 
					alert('검색어를 입력하세요.'); 
					return;
					} 
				else
					console.log("submit");
					jQuery('#form_search').submit();
				} 
			jQuery('#form_search #sch_type value').val(); 

		</script>
        <script src= "https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
    </body>
</html>