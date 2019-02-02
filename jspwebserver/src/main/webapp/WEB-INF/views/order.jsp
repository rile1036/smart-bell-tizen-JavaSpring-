<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta charset = "UTF-8">
        <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, height=device-height">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>출근 전 1시간</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/dashboard.css">
        <link rel="stylesheet" href="css/custom.css">
    </head>
    <body style="background-color:#FFFFFF;">
    
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
            <li class="active"><a href="#drink" id="drink-tab" aria-controls="drink" role="tab" data-toggle="tab">음료</a></li>
            <li><a href="#congee" id="congee-tab" aria-controls="congee" role="tab" data-toggle="tab"">죽</a></li>
            <li><a href="#salad" id="salad-tab" aria-controls="salad" role="tab" data-toggle="tab"">샐러드</a></li>
            <li><a href="#soup" id="soup-tab" aria-controls="soup" role="tab" data-toggle="tab"">국</a></li>
            <li><a href="#stew" id="stew-tab" aria-controls="stew" role="tab" data-toggle="tab"">찌게</a></li>
            <li><a href="#order" id="order-tab" aria-controls="order" role="tab" data-toggle="tab"">주문 내역</a></li>
          </ul>
        </div>
      </div>
    </nav>
    	
    
    
        <div role="tabpanel"> 
           
            
            <div class = "tab-content" style="padding-top:10px;">
                <div role="tabpanel" class="tab-pane fade in active" id="drink" aria-labelledby="drink-tab">
                		<div role="tabpanel">
                		
                		<ul class="nav nav-tabs" style="top:50px;"  role="tablist">
			              <li role="presentation" class="active" style="width:50%; background-color:#fff; text-align:center;"><a href="#chot" id="chot-tab" aria-controls="chot" role="tab" data-toggle="tab" class="customorder-tab">HOT</a></li>
			              <li role="presentation" style="width:50%; background-color:#fff; text-align:center;"><a href="#cice" id="cice-tab" aria-controls="cice" role="tab" data-toggle="tab" class="customorder-tab">ICE</a></li>
			            </ul>
			            <div class="tab-content" style="padding-top:0px;">
				            <div role="tabpanel" class="tab-pane fade in active" id="chot" aria-labelledby="chot-tab">
		                		<div class="tab-content">
					                <div class="table-responsive">
					                  <table class="table table-striped">
					                    <thead class="form-thead">
					                    </thead>
					                    <tbody>
					                        <c:forEach var="row" items="${cListHot}">
					                    	  <tr onclick="orderModal('${row.imageURL}','${row.name}', '${row.sPrice}', '${row.rPrice}', '${row.lPrice}', 1, 1);" style="background-color:#eeeeee;">
					                          <td style="text-align:center;">
					                              <img class="img-responsive img-rounded" style="width: 50px; height: 60px; display:inline-block;" src = ${row.imageURL}>
					                          </td>
					                          <td>${row.name}</td>
					                          <td>small<br>regular<br>large</td>
					                          <td>${row.sPrice}원<br>${row.rPrice}원<br>${row.lPrice}원</td>
					                      </tr>
					                      </c:forEach>
					                    </tbody>
					                  </table>
					                 </div>
				                 </div>
			                 </div>
			                 <div role="tabpanel" class="tab-pane fade" id="cice" aria-labelledby="cice-tab">
		                		<div class="tab-content">
					                <div class="table-responsive">
					                  <table class="table table-striped">
					                    <thead class="form-thead">
					                    </thead>
					                    <tbody>
					                        <c:forEach var="row" items="${cListIce}">
					                      <tr onclick="orderModal('${row.imageURL}','${row.name}', '${row.sPrice}', '${row.rPrice}', '${row.lPrice}', 2, 1);" style="background-color:#eeeeee;">
					                          <td style="text-align:center;">
					                              <img class="img-responsive img-rounded" style="width: 50px; height: 60px; display:inline-block;" src = ${row.imageURL}>
					                          </td>
					                          <td>${row.name}</td>
					                          <td>small<br>regular<br>large</td>
					                          <td>${row.sPrice}원<br>${row.rPrice}원<br>${row.lPrice}원</td>
					                      </tr>
					                      </c:forEach>
					                    </tbody>
					                  </table>
					                 </div>
				                 </div>
			                 </div>
		                 </div>
	                 </div> 
                 </div>
                 
                 <div role="tabpanel" class="tab-pane fade" id="congee" aria-labelledby="congee-tab">
                	<div role="tabpanel">
			            
				            
		                		<div class="tab-content">
					                <div class="table-responsive">
					                  <table class="table table-striped">
					                    <thead class="form-thead">
					                    </thead>
					                    <tbody>
					                        <c:forEach var="row" items="${bList}">
					                    	  <tr onclick="orderModal2('${row.imageURL}','${row.name}', '${row.rPrice}', '${row.lPrice}', 2);" style="background-color:#eeeeee;">
					                          <td style="text-align:center;">
					                              <img class="img-responsive img-rounded" style="width: 50px; height: 60px; display:inline-block;" src = ${row.imageURL}>
					                          </td>
					                          <td>${row.name}</td>
					                          <td>regular<br>large</td>
					                          <td>${row.rPrice}원<br>${row.lPrice}원</td>
					                      </tr>
					                      </c:forEach>
					                    </tbody>
					                  </table>
					                 </div>
				                 </div>
	                 </div> 
                 </div>
                 
                <div role="tabpanel" class="tab-pane fade" id="salad" aria-labelledby="salad-tab">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead class="form-thead">
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${dList}">
                                    <tr onclick="orderModal3('${row.imageURL}', '${row.name}', '${row.rPrice}', 3);" style="background-color:#eeeeee;">
                                        <td style="text-align:center;">
                                            <img class="img-responsive img-rounded" style="width: 50px; height: 60px; display:inline-block;" src = ${row.imageURL}>
                                        </td>
                                        <td>${row.name}</td>
                                        <td>regular</td>
                                        <td>${row.rPrice}원</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                  
                    </div> 
                </div>
                
                <div role="tabpanel" class="tab-pane fade" id="soup" aria-labelledby="soup-tab">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead class="form-thead">
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${sList}">
                                    <tr onclick="orderModal4('${row.imageURL}', '${row.name}', '${row.sPrice}', '${row.rPrice}', 4);" style="background-color:#eeeeee;">
                                        <td style="text-align:center;">
                                            <img class="img-responsive img-rounded" style="width: 50px; height: 60px; display:inline-block;" src = ${row.imageURL}>
                                        </td>
                                        <td>${row.name}</td>
                                        <td>small<br>regular</td>
                                        <td>${row.sPrice}원<br>${row.rPrice}원</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                  
                    </div> 
                </div>
                
                <div role="tabpanel" class="tab-pane fade" id="stew" aria-labelledby="stew-tab">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead class="form-thead">
                            </thead>
                            <tbody>
                                <c:forEach var="row" items="${tList}">
                                    <tr onclick="orderModal5('${row.imageURL}', '${row.name}', '${row.rPrice}', '${row.lPrice}', 5);" style="background-color:#eeeeee;">
                                        <td style="text-align:center;">
                                            <img class="img-responsive img-rounded" style="width: 50px; height: 60px; display:inline-block;" src = ${row.imageURL}>
                                        </td>
                                        <td>${row.name}</td>
                                        <td>regular<br>large</td>
                                        <td>${row.rPrice}원<br>${row.lPrice}원</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                  
                    </div> 
                </div>

                <div role="tabpanel" class="tab-pane fade" id="order" aria-labelledby="order-tab">
                        <div class="table-	responsive">
                            <table class="table table-striped">
                                <thead class="form-thead">
	                                <tr>
					                    <th style="text-align:center; font-size:14px; border-bottom-color:#d1effa;padding-left: 3px;padding-right: 3px;">이미지</th>
					                    <th style="text-align:center; font-size:14px; border-bottom-color:#d1effa;padding-left: 3px;padding-right: 3px;">품명</th>
					                    <th style="text-align:center; font-size:14px; border-bottom-color:#d1effa;padding-left: 3px;padding-right: 3px;">사이즈</th>
					                    <th style="text-align:center; font-size:14px; border-bottom-color:#d1effa;padding-left: 3px;padding-right: 3px;">개수</th>
					                    <th style="text-align:center; font-size:14px; border-bottom-color:#d1effa;padding-left: 3px;padding-right: 3px;">가격</th>
					                    <th style="text-align:center; font-size:14px; border-bottom-color:#d1effa;padding-left: 3px;padding-right: 3px;">취소</th>
				               		</tr>
                                </thead>
                                <tbody id="orderList" style = "font-size: 11px;">
                                </tbody>
                            </table>
                        </div> 
                        
                        <div style="text-align:right;">
	                  	</div>
                        <div style="text-align:right;">
	                        <label style="font-size:30px;width:20%; text-align : center;">금액 : </label>
	                        <input type="text" id="totalPrice" style="font-size:30px; height:50%; width:40%; padding-left:20px; " value = "0" readOnly>
	                        <button class="btn btn-default" style="font-size:16px; height:50%; width:35%; margin-bottom:10px" data-toggle="modal" data-target="#Final" onclick="init()">주문하기</button>
                        </div>
                        
                    </div>
              
                    
            </div>
        
        </div>
        
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">

                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="myModalLabel">상품 주문</h4>
                  <input type="text" style="display:none;" id="kind" name="kind" value="" >
                </div>
                <form method="post" action="" enctype="multipart/form-data">
                  <div class="modal-body" style="padding-left: 0px; padding-right: 0px; padding-bottom: 0px;">
                    <div class="container-fluid" style="padding-left: 5px; padding-right: 5px;">
                      <div class="col-xs-12 modal-data" style="margin-top:0px;">
                      	<div class="row" id ="image" style="text-align:center;">
                      		<div id="image-div" style="height: 100%; width: 100%">
                          		<img class="img-responsive img-rounded" id="modalImage" style="width: 150px; height: 180px; display:block; margin-left:auto; margin-right:auto;" src = "images/no_image.jpg">
                        	</div>
                      	</div>
                      	<div class="row" id ="data">
                      		<div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">품  명 : </label>
	                          	<input type="text" style="padding-left: 5px; padding-right: 5px;" id="modalName" name="modalName" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div> 
	                        </div>
	                        <div class="row" id ="data">
	                          <div class="col-xs-1"></div>
	                          <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">총  액 : </label>
	                          	<input type="text" id="total" style="padding-left: 5px; padding-right: 5px;" name="total" class="form-input col-xs-8" readOnly="true" required>
	                          </div>
	                          <div class="col-xs-3"></div>
	                        </div>
                          	<div class="row" id ="data">
                          	  <div class="col-xs-1"></div>
	                          <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">Size : </label>
	                          	<select class = "form-input col-xs-8" id="size" name="size" style="padding-left:1px !important; margin-top:5px;" onchange="modalSize();" required>
			                          	<option value = "1">small</option>
			                          	<option value = "2">regular</option>
			                          	<option value = "3">large</option>
			                    </select>
			                    <input type="text" name="sPrice" id="sPrice" value="" style="display:none;">
			                    <input type="text" name="rPrice" id="rPrice" value="" style="display:none;">
			                    <input type="text" name="lPrice" id="lPrice" value="" style="display:none;">
	                          </div>
	                          <div class="col-xs-3"></div>
                        	</div>
                        	<div class="row" id ="data">
                        	  <div class="col-xs-1"></div>
	                          <div class="col-xs-8">
	                        	<label class ="form-label col-xs-4 modal-label" style="text-align:center;">H / I :</label>
	                          	<select class = "form-input col-xs-8" id="types" name="types" style="padding-left:3px !important; margin-top:5px;" readOnly="true" required>
			                    	<option value = "1">Hot</option>
			                        <option value = "2">Ice</option>
			                        <option value = "3">none</option>
			                    </select>
			                  </div>	
			                  <div class="col-xs-3"></div>
	                        </div>
	                        <div class="row" id ="data">
	                          <div class="col-xs-1"></div>
	                          <div class="col-xs-8">
	                        	<label class ="form-label col-xs-4 modal-label" style="text-align:center">갯수 :</label>
	                          	<select class = "form-input col-xs-8" id="count" name="count" style="padding-left:3px !important; margin-top:5px;" onchange="modalCount(this);" required>
			                      <option value = "1">1개</option>
			                      <option value = "2">2개</option>
			                      <option value = "3">3개</option>
			                      <option value = "4">4개</option>
			                      <option value = "5">5개</option>
			                      <option value = "6">6개</option>
			                      <option value = "7">7개</option>
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
	                    <input type="text" id="uuid" name="uuid" style="display:none;" value="blank">
	                    <button type="button" class="btn btn-primary" style="background-color:#E1f1fa; color:black; border-color:#E1f1fa;" onclick="addOrderItem();">주문 추가</button>
	                  </div>
	                </form>
                    
                  </div>

                  
              </div>
            </div>
            
            
            <div class="modal fade" id="Final" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">

				
				
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="myModalLabel">배송지 선택</h4>
                </div>
                <form method="post" action="manList/productInsert" enctype="multipart/form-data">
                  <div class="modal-body" style="padding-left: 0px; padding-right: 0px; padding-bottom: 0px;">
                    <div class="container-fluid" style="padding-left: 5px; padding-right: 5px;">
                      <div class="col-xs-12 modal-data" style="margin-top:0px;">
                      	
                      	<div class="row" id ="data">
                      		<div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center; font-size:18px;">베송지 : </label>
	                          	<input type="text" style="padding-left: 5px; padding-right: 5px;" id="region" name="region" class="form-input col-xs-8" required>
	                          </div>
	                        </div>
	                        <div class="row" id ="data">
	                        <div class="col-xs-1"></div> 
	                          <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center; font-size:18px;">시간 : </label>
	                          	<input type="date" style="padding-left: 5px; padding-right: 5px;" id="bDate" name="bDate" class="form-input col-xs-8" required>
	                          	<input type="time" style="height : 25px;" id="bTime" name="bTime" class="form-input col-xs-8" value = "06:00" required >
	                          </div>
	                          <div class="col-xs-3"></div>
	                          </div>
                        	<div class="row" id ="data">
                        	  <div class="col-xs-1"></div>
	                          <div class="col-xs-8">
	                        	<label class ="form-label col-xs-4 modal-label" style="text-align:center; font-size:18px;">알람 :</label>
	                          	<select class = "form-input col-xs-8" id="bellType" name="bellType"  onchange="Final(this);" style="padding-left:3px !important; margin-top:5px;" readOnly="true" required>
			                    	<option value = "CS">초인종 & 스피커</option>
			                        <option value = "C">초인종</option>
			                        <option value = "S">스피커</option>
			                    </select>
			                  </div>	
			                  <div class="col-xs-3"></div>
	                        </div>
	                        <div class="row" id ="data">
                        	  <div class="col-xs-1"></div>
	                          <div class="col-xs-8">
	                        	<label class ="form-label col-xs-4 modal-label" style="text-align:center; font-size:18px;">알람음 :</label>
	                          	<select class = "form-input col-xs-8" id="bellSound" name="bellSound"  style="padding-left:3px !important; margin-top:5px;" readOnly="true" required>
			                    	<option value = "1">Happy Life</option>
			                        <option value = "2">Uplift</option>
			                        <option value = "3">Pond</option>
			                        <option value = "4">Good Morning</option>
			                    </select>
			                  </div>	
			                  <div class="col-xs-3"></div>
	                        </div>
	                       <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  
                      		  <div class="col-xs-8">
	                          	<label class ="form-label col-xs-4 modal-label" style="text-align:center; font-size:18px;">PW : </label>
	                          	<input type="number" min = "1000" max = "9999" style="padding-left: 5px; padding-right: 5px;" id="password" name="password" class="form-input col-xs-8" required>
	                          </div>
	                        </div>
	                        <div class="row" id ="data">
                      		  <div class="col-xs-1"></div>
                      		  <div class="col-xs-8" style="font-size:19px">
	                          	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                          	4자리를 입력하세요.
	                          </div>
	                        </div>
                        </div>
                          
                        </div>
                      
                        
                      </div>
                    </div>
					
		
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    <input type="text" id="uuid" name="uuid" style="display:none;" value="blank">
                    <button type="button" data-dismiss="modal" class="btn btn-default"  onclick="orderToServer();" >주문</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
            

		
        <script src= "https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        
        <script type="text/javascript">
    		var orderList = [];
    		var userNum = "0";
    		
        
        	function orderModal(url, name, s, r, l, type, kind){
        		$("#myModal").modal("show");
        		$("#modalImage").attr("src", url);
        		$('#image-div').slideDown();
        		$('#modalName').val(name);
        		$('#total').val(s);
        		$('#size').attr("disabled", false);
        		$('#size').val('1').prop("selected", true);
        		$('#count').val('1').prop("selected", true);
        		$('#types').val(type).prop("selected", true);
        		$('#types').attr("disabled", true);
        		$("#sPrice").val(s);
        		$("#rPrice").val(r);
        		$("#lPrice").val(l);
        		$("#kind").val(kind);
        	}
        	
        	function orderModal2(url, name, r, l, kind){
        		$("#myModal").modal("show");
        		$("#modalImage").attr("src", url);
        		$('#image-div').slideDown();
        		$('#modalName').val(name);
        		$('#total').val(r);
        		$('#size').val('2').prop("selected", true);
        		$('#size').attr("disabled", false);
        		$('#count').val('1').prop("selected", true);
        		$('#types').val('3').prop("selected", true);
        		$('#types').attr("disabled", true);
        		$("#sPrice").val("Nan");
        		$("#rPrice").val(r);
        		$("#lPrice").val(l);
        		$("#kind").val(kind);
        	}
        	
        	function orderModal3(url, name, r, kind){
        		$("#myModal").modal("show");
        		$("#modalImage").attr("src", url);
        		$('#image-div').slideDown();
        		$('#modalName').val(name);
        		$('#total').val(r);
        		$('#size').val('2').prop("selected", true);
        		$('#size').attr("disabled", true);
        		$('#count').val('1').prop("selected", true);
        		$('#types').val('3').prop("selected", true);
        		$('#types').attr("disabled", true);
        		$("#sPrice").val("0");
        		$("#rPrice").val(r);
        		$("#lPrice").val("0");
        		$("#kind").val(kind);
        	}

        	function orderModal4(url, name, s, r, kind){
        		$("#myModal").modal("show");
        		$("#modalImage").attr("src", url);
        		$('#image-div').slideDown();
        		$('#modalName').val(name);
        		$('#total').val(s);
        		$('#size').val('1').prop("selected", true);
        		$('#size').attr("disabled", false);
        		$('#count').val('1').prop("selected", true);
        		$('#types').val('3').prop("selected", true);
        		$('#types').attr("disabled", true);
        		$("#sPrice").val(s);
        		$("#rPrice").val(r);
        		$("#lPrice").val("Nan");
        		$("#kind").val(kind);
        	}
        	
        	function orderModal5(url, name, r, l, kind){
        		$("#myModal").modal("show");
        		$("#modalImage").attr("src", url);
        		$('#image-div').slideDown();
        		$('#modalName').val(name);
        		$('#total').val(r);
        		$('#size').val('2').prop("selected", true);
        		$('#size').attr("disabled", false);
        		$('#count').val('1').prop("selected", true);
        		$('#types').val('3').prop("selected", true);
        		$('#types').attr("disabled", true);
        		$("#sPrice").val("Nan");
        		$("#rPrice").val(r);
        		$("#lPrice").val(l);
        		$("#kind").val(kind);
        	}
        	
        	function init(){
        		
        		if(orderList == ""){
        			alert("주문 내역이 없습니다.");
        			location.reload();
        		}
        		
        		var query = {"userNum":userNum};
        		
				$.ajax({
					url : "order/searchUser",
					type : "post",
					data : query,
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",
					success : function(data) {
						if(data != ""){
			        	    var bDate = new Date();
			 	            var now = setDateForm(bDate.getFullYear(), 4) + "-" 
			 	             + setDateForm(bDate.getMonth()+1, 2) + "-" + setDateForm(bDate.getDate(), 2);
			 	           console.log(data);
			        		$("#bDate").val(now);
			        		$("#bTime").val();
			        		$("#region").val(data);
			        		$("#bellType").val();
			        		$("#bellSound").val();
			        		$("#password").val();
						}else{
							
						}
					}
				});	
        	}
        	
        	function setDateForm(n, digit){
 	           var zero="";
 	           n = n.toString();
 	
 	           if(n.length < digit){
 	             for(i = 0; i<digit-n.length; i++)
 	               zero +='0';
 	           }
 	           return zero + n;
 	         }
        	
        	function Final(elm){
        		if($(elm).val() == "C"){
        			$("#bellSound").attr("disabled", true);
        			$('[data-toggle="buttons"] :radio').attr("disabled", true);
      		 		$('[data-toggle="buttons"] label').attr("disabled", true);
      		 		$("#password").attr("disabled", false);
        		}
        		else if($(elm).val() == "S"){
        			$("#bellSound").attr("disabled", false);
        			$("#bellSound").val("1");
        			$("#password").val("");
        			$('[data-toggle="buttons"] :radio').attr("disabled", false);
      		 		$('[data-toggle="buttons"] label').attr("disabled", false);
      		 		$("#password").attr("disabled", true);
        		}
        		else{
        			$("#bellSound").attr("disabled", false);
        			$("#bellSound").val("1");
        			$("#password").attr("disabled", false);
        			$('[data-toggle="buttons"] :radio').attr("disabled", false);
      		 		$('[data-toggle="buttons"] label').attr("disabled", false);
        		}
        		
        	}
        	
       
        	
        	function modalCount(elm){
        		var count = $(elm).val();
        		switch(parseInt($('#size').val())){
        		case 1:
        			var price = parseInt($('#sPrice').val());
        			$('#total').val(count*price);
        			break;
        		case 2:
        			var price = parseInt($('#rPrice').val());
        			$('#total').val(count*price);
        			break;
        		case 3:
        			var price = parseInt($('#lPrice').val());
        			$('#total').val(count*price);
        			break;
       			default :
       				break;
        		}
        	}
        	
        	function modalSize(){
        		var count = $('#count').val();
        		switch(parseInt($('#size').val())){
        		case 1:
        			var price = parseInt($('#sPrice').val());
        			$('#total').val(count*price);
        			break;
        		case 2:
        			var price = parseInt($('#rPrice').val());
        			$('#total').val(count*price);
        			break;
        		case 3:
        			var price = parseInt($('#lPrice').val());
        			$('#total').val(count*price);
        			break;
       			default :
       				break;
        		}
        		
        	}
        	
        	
        	function orderItem(){
        		this.url;
        		this.name;
        		this.size;
        		this.count;
        		this.total;
        		this.type;
        		this.fullName;
        		this.kind;
        	}
        	
        	function addOrderItem(){
        		$("#myModal").modal("hide");
        		var tmp = new orderItem();
        		
        		tmp.url = $("#modalImage").attr("src");
        		tmp.name = $('#modalName').val();
        		tmp.total = $('#total').val();
        		tmp.count = $('#count').val();
        		tmp.type = $('#types').val();
        		tmp.kind = $('#kind').val();
 
        		switch(parseInt($('#size').val())){
        		case 1:
        			tmp.size = 'small';
        			break;
        		case 2:
        			tmp.size = 'regular';
        			break;
        		case 3:
        			tmp.size = 'large';
        			break;
       			default:
       				break;
        			
        		}
        		
        		switch(parseInt(tmp.type)){
        		case 1:
        			tmp.fullName = tmp.name + '(HOT)';
        			break;
        		case 2:
        			tmp.fullName = tmp.name + '(ICE)';
        			break;
       			default:
       				tmp.fullName = tmp.name;
       				break;
        			
        		}
        		
        		
        		orderList.push(tmp);
        		addPrintList(tmp);
        		calTotal();
        		console.log(orderList);
        	}        	
        	
        	function addPrintList(item){
        		var contents = '';
        		
        		contents += '<tr style="background-color:#eeeeee;">';
        		contents +=		'<td style="text-align:center;"><img class="img-responsive img-rounded" style="width: 50px; height: 60px; display:inline-block;" src='+ item.url +'></td>';
        		contents +=		'<td style="text-align:center;">' + item.fullName + '</td>';
        		contents +=		'<td style="text-align:center;">' + item.size + '</td>';
        		contents +=		'<td style="text-align:center;">' + item.count + '개</td>';
        		contents +=		'<td style="text-align:center;">' + item.total + '원</td>';
        		contents +=		'<td style="text-align:center;"><button type="button" class="btn btn-default" id="delItem" style="width:80%; height:80%;"onclick="delItem(\''+item.name+'\', \''+item.size+'\', \''+item.count+'\', \''+item.total+'\' , \''+item.type+'\', this);">취소</button></td>';
        		contents += '</tr>';
        		
        		$("#orderList").append(contents);
        	}
        	
        	function delItem(name, size, count, total, type, elm){
        		console.log(name + ", " + type + ", " + size + ", " + count + ", " + total);
        		$(elm).parent().parent().remove();
        		
        		for(var i=0; i < orderList.length ; i++){
        			
        			if((orderList[i].name == name) && (orderList[i].type == type) &&
        					(orderList[i].size == size) && (orderList[i].count == count) &&
        					(orderList[i].total == total)){
        				orderList.splice(i,1);
        				break;
        			}
        		}
        		console.log(orderList);
        		calTotal();
        	}
			
        	function calTotal(){
        		var tmp = 0;
        		for(var i=0; i<orderList.length ; i++){
        			console.log(orderList[i].total);
        			tmp = parseInt(tmp) + parseInt(orderList[i].total);
        			console.log(tmp);
        		}
        		
        		$('#totalPrice').val(tmp);
        	}
        	
        	function setNum(num){
        		userNum = num;
        	}
        	
        	function orderToServer(){
        		
        		//var init = new init(); 
        		
        		var sendUserNum = userNum;
        		var menu = "";
        		var fullMenu = "";
        		var count = "";
        		var size = "";
        		var totalByItem = "";
        		var typeByItem = "";
        		var kind = "";
        		var total;
        		var bDate = $("#bDate").val();
        		var bTime = $("#bTime").val();
        		var region = $("#region").val();
        		var bellType = $("#bellType").val();
        		var bellSound = $("#bellSound").val();
        		var password = $("#password").val();
				var test = "";
        		if(region == test){
        			alert("배송지를 입력해주세요.");
        			
        			document.getElementById("region").value = "";
        			return false;
        		}
        		var test = "";
        		
        		if(bellType == 'CS'){
        			if(password == test){
            			alert("비밀번호를 입력해주세요.");
            			
            			document.getElementById("password").value = "";
            			return false;
            		}
        			if(password < 1000){
        				alert("비밀번호를 1000 ~ 9999 사이로 입력해주세요.");
        				document.getElementById("password").value = "";
        				return false;
        			}
        		
        			if(password > 10000){
        				alert("비밀번호를 1000 ~ 9999 사이로 입력해주세요.");
        				document.getElementById("password").value = "";
        				return false;
        			}
        		}
        		
        		if(bellType == 'C'){
        			if(password == test){
            			alert("비밀번호를 입력해주세요.");
            			
            			document.getElementById("password").value = "";
            			return false;
            		}
        			if(password < 1000){
        				alert("비밀번호를 1000 ~ 9999 사이로 입력해주세요.");
        				document.getElementById("password").value = "";
        				return false;
        			}
        		
        			if(password > 10000){
        				alert("비밀번호를 1000 ~ 9999 사이로 입력해주세요.");
        				document.getElementById("password").value = "";
        				return false;
        			}
        		}
        		
        		for(var i=0; i<orderList.length; i++){
        			menu += orderList[i].name + ',';
        			fullMenu += orderList[i].fullName + ',';
        			count += orderList[i].count + ',';
        			size += orderList[i].size + ',';
        			totalByItem  +=	 orderList[i].total + ',';
        			kind += orderList[i].kind + ',';
        		
        			switch(parseInt(orderList[i].type)){
        			case 1:
        				typeByItem += "H,";
        				break;
        			case 2:
        				typeByItem += "I,";
        				break;
        			case 3:
        				typeByItem += "N,";
        				break;
        			}
        		}
        		
        		total = $('#totalPrice').val();
        		var query = {"userNum":sendUserNum, "menu":menu, "fullMenu":fullMenu, 
        				"count":count, "size":size, "total":total, "kind":kind, 
        				"totalByItem":totalByItem, "typeByItem":typeByItem, 
        				"bDate" :bDate, "bTime" :bTime, "region": region, "bellType":bellType, "bellSound":bellSound, 
        				"password": password};
        		
				$.ajax({
					url : "order/insert",
					type : "post",
					data : query,
					success : function(data) {
						if(data == 1){
							allDeleteItem();
						}else{
							
						}
					}
				});
				
        	}
        	
        	function allDeleteItem(){
        		for(var i = 0; i < orderList.length; i++)
        			$("#orderList > tr:first").remove();
        		
        		orderList = [];
        		console.log(orderList);
        		$('#totalPrice').val("0");
        	}
        	
        </script>
    </body>
</html>