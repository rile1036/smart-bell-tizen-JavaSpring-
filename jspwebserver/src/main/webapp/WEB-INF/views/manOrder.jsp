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
				            <li class="active"><a href="manOrder">주문목록<span class="sr-only">(current)</span></a></li>
				            <li><a href="manList">상품리스트</a></li>
				            <li><a href="manUser">회원관리</a></li>
				            <li><a href="manjob">직원관리</a></li>
				            <li><a href="manStock">재고관리</a></li>
			           		<li><a href="manProfit">판매실적</a></li>
				        </ul>
				    </div>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <image class="img-responsive center-block img-rounded" src = "images/main_banner.jpg">
            <div class="form-subject">
                    주문목록
                </div>
                <hr class="form-hr">
                
                <!--
          <h1 class="page-header">Dashboard</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/sky" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img data-src="holder.js/200x200/auto/vine" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
          </div>

          <h2 class="sub-header">Section title</h2>
          -->
          <div class="table-responsive">
            <table class="table table-striped">
              <thead class="form-thead">
                <tr>
                  <th style="text-align:center;">주문번호 <a href="manOrder">▼</a></th>
                  <th style="text-align:center;">주문일자</th>
                  <th style="text-align:center;">배송일자</th>
                  <th style="text-align:center;">배송시간 <a href="manOrderTime">▼</a></th>
                  <th style="text-align:center;">ID</th>
                  <th style="text-align:center;">상세내역</th>
                  <th style="text-align:center;">완료확인</th>
                </tr>
              </thead>
              <tbody class="form-tbody">
                <c:forEach var="row" items="${list}">
		                <tr>
		                	<td style="text-align:center;">${row.orderNum}</td>
		                	<td style="text-align:center;">${row.date}</td>
		                	<td style="text-align:center;">${row.bDate}</td>
		                	<td style="text-align:center;">${row.bTime}</td>
		                	<!-- <td style="text-align:center;">
		                		<c:forTokens items="${row.fullMenu}" delims="," var="item">
		                				${item}<br>
		                			</c:forTokens>
		                		</td>
		                		<td style="text-align:center;">
		                			<c:forTokens items="${row.count}" delims="개," var="item">
		                				${item} 개<br>
		                			</c:forTokens>
		                		</td>-->
		                	<td style="text-align:center;">${row.id}</td>
		                	
		                	<td style="text-align:center;">
		                		<button type="button" class="btn btn-default" data-toggle="modal" data-target="#content" onclick="modalSetting('${row.date}', '${row.orderNum}', '${row.fullMenu}', '${row.count}', '${row.bDate}', '${row.bTime}',  '${row.region}', '${row.bellType}','${row.bellSound}');">내역확인</button>
		                	</td>
		                	<td style="text-align:center;">
		               			<button type="button" class="btn btn-default" onclick="submitFunc('${row.orderNum}', 'complete')">완료</button>
		                     	<button type="button" class="btn btn-default" onclick="submitFunc('${row.orderNum}', 'cancle')">취소</button>
		                    </td>  
		                </tr>
		                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
    </div>

		<div class="modal fade" id="content" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">

                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="myModalLabel">상세 내역</h4>
                  <input type="text" style="display:none;" id="kind" name="kind" value="" >
                </div>
                <form method="post" action="" enctype="multipart/form-data">
                  <div class="modal-body" style="padding-left: 0px; padding-right: 0px; padding-bottom: 0px;">
                    <div class="container-fluid" style="padding-left: 5px; padding-right: 5px;">
                      <div class="col-xs-12 modal-data" style="margin-top:0px;">
                      	<div class="row" id ="image" style="text-align:center;">
                      		<div id="image-div" style="height: 100%; width: 100%">
                      		<img class="img-responsive img-rounded" id="modalImage" style="width: 550px; height: 180px; display:block; margin-left:auto; margin-right:auto;" src = "images/main_banner.jpg">
                        	</div>
                      	</div>
                      	<div class="row" id ="data">
                      		<div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">주문번호 : </label>
	                          	<input type="text" style="border:none; padding-left: 5px; padding-right: 5px;" id="orderNum" name="orderNum" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
                      		<div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">주문일자 : </label>
	                          	<input type="text" style="border:none; padding-left: 5px; padding-right: 5px;" id="date" name="date" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">배송일자 : </label>
	                          	<input type="text" style="border:none; padding-left: 5px; padding-right: 5px;" id="bDate" name="bDate" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">배송시간 : </label>
	                          	<input type="text" style="border:none; padding-left: 5px; padding-right: 5px;" id="bTime" name="bTime" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">		  
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">메뉴 : </label>
	                          	<input type="textarea" style="word-break:break-all; border:none; padding-left: 5px; padding-right: 5px;" id="item" name="item" class="form-input col-xs-8" readOnly="true" required> 	
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">		  
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">수량 : </label>
	                          	<input type="textarea" style="word-break:break-all; border:none; padding-left: 5px; padding-right: 5px;" id="count" name="count" class="form-input col-xs-8" readOnly="true" required> 	
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">배송지 : </label>
	                          	<input type="text" style="border:none; padding-left: 5px; padding-right: 5px;" id="region" name="region" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">알람종류 : </label>
	                          	<input type="text" style="border:none; padding-left: 5px; padding-right: 5px;" id="bellType" name="bellType" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">알람음 : </label>
	                          	<input type="text" style="border:none; padding-left: 5px; padding-right: 5px;" id="bellSound" name="bellSound" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
                        </div>
                          
                        </div>
                      
                        
                      </div>
                    </div>
	                    <div class="modal-footer">
	                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	                  </div>
	                </form>
                    
                  </div>

                  
              </div>
            </div>

        <script src= "https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script>
        
        	var orderItemNum = parseInt('${itemLength}');
        	
        	$(document).ready(function(){
        		setInterval(checkInsert, 1000);
        	});
        
        	function submitFunc(orderNum, type, region){
        		
				var query = {"orderNum":orderNum, "type":type, "region":region};
				
				$.ajax({
					url : "manOrder/submit",
					type : "post",
					data : query,
					success : function(data) {
						if(data == 1){
							location.reload();
						}else{
							
						}
					}
				});	
        	}
        	
        	function checkInsert(){
        		$.ajax({
					url : "manOrder/checkCount",
					success : function(data) {
						if(orderItemNum != data)
							location.reload();
					}
				});	
        	}
        	
        	function modalSetting(date, orderNum, item, count, bDate, bTime,  region, bellType, bellSound){

        		$('#date').val(date);
            	$('#orderNum').val(orderNum);         	
            	
            	var itemlist = item.replace(',', '\n');
            	$('#item').val(itemlist);
            	$('#count').val(count);
            	$('#bDate').val(bDate);
            	$('#bTime').val(bTime);     	
            	$('#region').val(region);
            	
            	if (bellType == 'CS'){
            		bellType = '초인종 & 스피커';
            	}
            	else if (bellType == 'C'){
            		bellType = '초인종';
            	}
            	else if (bellType == 'S'){
            		bellType = '스피커';
            	}
            	$('#bellType').val(bellType);

            	
            	
            	if (bellSound == '1'){
            		bellSound = 'Happy Life';
            	}
            	else if (bellSound == '2'){
            		bellSound = 'Uplift';
            	}
            	else if (bellSound == '3'){
            		bellSound = 'Pond';
            	}
            	else if (bellSound == '4'){
            		bellSound = 'Good Morning';
            	}
            	
            	else if (bellSound == '0'){
            		bellSound = '* 스피커를 사용하지 않습니다 *';
            	}
            	$('#bellSound').val(bellSound);
            	console.log(orderNum);
            	
            	
              }
        	
        </script>
    </body>
</html>