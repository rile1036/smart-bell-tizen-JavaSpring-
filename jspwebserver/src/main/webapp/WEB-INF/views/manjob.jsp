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
            <li><a href="manUser">회원관리</a></li>
            <li class="active"><a href="manjob">직원관리<span class="sr-only">(current)</span></a></li>
            <li><a href="manStock">재고관리</a></li>
            <li><a href="manProfit">판매실적</a></li>
          </ul>
        </div>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <image class="img-responsive center-block img-rounded" src = "images/main_banner.jpg">
          <div class="form-subject">
                  직원관리 
          </div>
          <hr class="form-hr">
                
          <div class="table-responsive">
            <table class="table table-striped">
              <thead class="form-thead">
                <tr>
                  <th>이름</th>
                  <th>생년월일</th>
                  <th>전화번호</th>
                  <th>성별 <a href="manjobGender">▼</a></th>
                  <th>Email</th>
                  <th>직업</th>
                  <th>
                	  <form id="job_search" method="post" action="jobsearch"> 
		  			  	<select id="job_type" name="job_type" style="font-size : 13px; height : 25px; width : 90px;"> 
		  					<option value="entry" selected="selected">전체 직무</option> 
		  					<option value="mana">관리직</option> 
		  					<option value="offi">사무직</option> 
		  					<option value="deli">배달직</option> 
		  				</select>
          				<button type = "button" style = "font-size : 13px; height : 25px; width : 40px;"onclick="jobsearch();">검색</button>
         			  </form>
                  </th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="row" items="${list}">
                
	                <tr height = "50px">
	                	<td>${row.jobName}</td>
	                	<td>${row.jobBirth}</td>
	                	<td>${row.jobPhone}</td>
	                	<td>${row.jobGender}</td>
	                	<td>${row.jobEmail}</td>
	                	<td>${row.jobsear}</td>
	                	<td>
	                		<c:if test="${row.jobsear == '사무직'||row.jobsear == '배달직'}">
	                			<div id = "test">
				        			<form method="post" action="manjob/deleteManjob" >
					        			<button type="button" value = "ome" onclick="createSetting('${row.jobName}', '${row.jobBirth}', '${row.jobPhone}', '${row.jobGender}', '${row.jobEmail}', '${row.jobsear}', '${row.jobNum}');" class="btn btn-default" data-toggle="modal" data-target="#create">수정</button>
					            		<input type="text" name="delId" style="display:none;" value="${row.jobNum}">
					            		<button type="submit" class="btn btn-default">삭제</button>
				             		</form>
				             	</div>
				             </c:if>
				        </td>  
	                </tr>
	                
                </c:forEach>
              </tbody>
            </table>
          </div>
          <form id="form_search" method="post" action="manjob"> 
		  <select id="sch_type" name="sch_type" style="height : 25px;"> 
		  	<option value="name" selected="selected">이름</option> 
		  	<option value="phone">전화번호</option> 
		  	<option value="email">Email</option> 
		  </select>

          <input type = "text" id = "select" name = "select" />
          <button type = "button" onclick="search();">검색</button>
          
          </form>
          </br>
          <button class="btn btn-default" id = "test" style=" width:80px;"	 data-toggle="modal" data-target="#create" onclick="init()">직원 추가</button>
           </div>
          
        </div>
      </div>
     	
     	
     	<div class="modal fade" id="create" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">

				
				
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="myModalLabel">직원 추가</h4>
                </div>
                <form method="post" action="manList/productInsert" enctype="multipart/form-data">
                  <div class="modal-body" style="padding-left: 0px; padding-right: 0px; padding-bottom: 0px;">
                    <div class="container-fluid" style="padding-left: 5px; padding-right: 5px;">
                      <div class="col-xs-12 modal-data" style="margin-top:0px;">
                      	
                      	<div class="row" id ="data">
                      		<div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">이름 : </label>
	                          	<input type="text" style="padding-left: 5px; padding-right: 5px;" id="jobName" name="jobName" class="form-input col-xs-8" required>
	                          </div>
	                        </div>
	                        <div class="row" id ="data">
	                        <div class="col-xs-1"></div> 
	                          <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">생년월일 : </label>
	                          	<input type="date" style="padding-left: 5px; padding-right: 5px;" id="jobBirth" name="jobBirth" class="form-input col-xs-8" required>
	                          </div>
	                          <div class="col-xs-3"></div>
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">전화번호 : </label>
	                          	<input type="text" style="padding-left: 5px; padding-right: 5px;" id="jobPhone" name="jobPhone" class="form-input col-xs-8" required>
	                          </div>
	                        </div>
                        	<div class="row" id ="data">
                        	  <div class="col-xs-1"></div>
	                          <div class="col-xs-8">
	                        	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">성별 :</label>
	                          	<select class = "form-input col-xs-8" id="jobGender" name="jobGender" style="padding-left:3px !important; margin-top:5px;" readOnly="true" required>
			                    	<option value = "남자">남자</option>
			                        <option value = "여자">여자</option>
			                    </select>
			                  </div>	
			                  <div class="col-xs-3"></div>
	                        </div>
	                        	<div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">Email : </label>
	                          	<input type="text" style="padding-left: 5px; padding-right: 5px;" id="jobEmail" name="jobEmail" class="form-input col-xs-8" required>
	                          </div>
	                        </div>
							<div class="row" id ="data">
                        	  <div class="col-xs-1"></div>
	                          <div class="col-xs-8">
	                        	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">직업 :</label>
	                          	<select class = "form-input col-xs-8" id="jobsear" name="jobsear"  style="padding-left:3px !important; margin-top:5px;" readOnly="true" required>
			                    	<option value = "사무직">사무직</option>
			                        <option value = "배달직">배달직</option>
			                    </select>
			                  </div>	
			                  <div class="col-xs-3"></div>
	                        </div>
                        </div>
                          
                        </div>
                      
                        
                      </div>
                    </div>
					
		
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    <input type="text" id="uuid" name="uuid" style="display:none;" value="0">
                    <button type="button" data-dismiss="modal" class="btn btn-default" onclick="insertManjob();">등록</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          
        

		<script type = "text/javascript">
			var jobNum = "0";	
			console.log();
			
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
			
			function jobsearch(){
				var job_type = jQuery('#job_type').val(); 
				console.log(job_type);
				jQuery('#job_search').submit();
			}
			
		
			
			function init(){	
				
			}
			
			function insertManjob(){
				
				console.log(jobNum);
        		var jobName = $("#jobName").val();
        		var jobBirth = $("#jobBirth").val();
        		var jobEmail = $("#jobEmail").val();
        		var jobPhone = $("#jobPhone").val();
        		var jobGender = $("#jobGender").val();
        		var jobsear = $("#jobsear").val();
        		var jobNum = $("#uuid").val();
				var query = {"jobNum":jobNum, "jobName":jobName, "jobBirth":jobBirth, "jobEmail":jobEmail,
						"jobPhone":jobPhone, "jobGender":jobGender, "jobsear":jobsear};	
				
				console.log(jobNum);
				$.ajax({
					url : "manjob/insert",
					type : "post",
					data : query,
					success : function(data) {
						if(data == 1){
							location.reload();					
						}else{					
							location.reload();

						}
					}
				});	
				console.log(jobGender);
        	}
			
			function createSetting(jobName, jobBirth, jobPhone, jobGender, jobEmail, jobsear, jobNum){
				
				$('#jobName').val(jobName);
				$('#jobBirth').val(jobBirth);
				$('#jobPhone').val(jobPhone);			
				$('#jobEmail').val(jobEmail);	
				$('#jobGender').val(jobGender).prop("selected", true);
				console.log(jobNum);
				$('#jobsear').val(jobsear).prop("selected", true);
				$('#uuid').val(jobNum);
				
			}
			
		</script>
        <script src= "https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
    </body>
</html>