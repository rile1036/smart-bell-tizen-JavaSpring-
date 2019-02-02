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
            <li class="active"><a href="manList">상품리스트<span class="sr-only">(current)</span></a></li>
            <li><a href="manUser">회원관리</a></li>
            <li><a href="manjob">직원관리</a></li>
            <li><a href="manStock">재고관리</a></li>
            <li><a href="manProfit">판매실적</a></li>
          </ul>
        </div>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <image class="img-responsive center-block img-rounded" src = "images/main_banner.jpg">
            <div class="form-subject">
                상품리스트
            </div>
            <hr class="form-hr">
          
          <div role="tabpanel"> 
              
	          <ul class="nav nav-tabs" role="tablist">
			    <li role="presentation" class="active"><a href="#drink" id="drink-tab" aria-controls="drink" role="tab" data-toggle="tab" class="custom-tab">음료</a></li>
			    <li role="presentation"><a href="#congee" id="congee-tab" aria-controls="congee" role="tab" data-toggle="tab" class="custom-tab">죽</a></li>
			    <li role="presentation"><a href="#salad" id="salad-tab" aria-controls="salad" role="tab" data-toggle="tab" class="custom-tab">샐러드</a></li>
			    <li role="presentation"><a href="#soup" id="soup-tab" aria-controls="soup" role="tab" data-toggle="tab" class="custom-tab">국</a></li>
			    <li role="presentation"><a href="#stew" id="stew-tab" aria-controls="stew" role="tab" data-toggle="tab" class="custom-tab">찌게</a></li>
			  </ul>
			  
	          <div class = "tab-content">
	          
	          	<div role="tabpanel" class="tab-pane fade in active" id="drink" aria-labelledby="drink-tab">
		          <div class="table-responsive">
		            <table class="table table-striped">
		              <thead class="form-thead">
		                <tr>
		                    <th>번호</th>
		                    <th>이미지</th>
		                    <th>품명</th>
		                    <th>사이즈</th>
		                    <th>가격</th>
		                    <th>타입</th>
		                    <th></th>
		                </tr>
		              </thead>
		              <tbody>
	              		<c:forEach var="row" items="${cList}">
		                <tr>
		                	<td>${row.num}</td>
		                	<td>
		                		<img class="img-responsive img-rounded" style="width: 50px; height: 60px;" src = ${row.imageURL}>
		                	</td>
		                	<td>${row.name}</td>
		                	<td>small<br>regular<br>large</td>
		                	<td>${row.sPrice}<br>${row.rPrice}<br>${row.lPrice}</td>
		                	<c:choose>
		                		<c:when test="${row.type eq 'H'}">
		                			<td>HOT</td>
		                		</c:when>
		                		<c:when test="${row.type eq 'C'}">
		                			<td>ICE</td>
		                		</c:when>
		                		<c:when test="${row.type eq 'HC'}">
		                			<td>HOT & ICE</td>
		                		</c:when>
		                	</c:choose>
		                	<td>
		                		<form method="post" action="manList/delete" >
			               			<button type="button" onclick="modalSetting('${row.imageURL}', '${row.name}', '${row.sPrice}', '${row.rPrice}', '${row.lPrice}', '${row.id}', 1, '${row.type}');" class="btn btn-default" data-toggle="modal" data-target="#myModal">수정</button>
			               			<input type="text" name="delId" style="display:none;" value="${row.id}">
			               			<input type="text" name="delkinds" style="display:none;" value="1">
			                     	<button type="submit" class="btn btn-default">삭제</button>
		                     	</form>
		                    </td>  
		                </tr>
		                </c:forEach>
		              </tbody>
		            </table>
		            
		          </div> 
               	</div>
	                	
               	<div role="tabpanel" class="tab-pane fade" id="congee" aria-labelledby="congee-tab">
	               	<div class="table-responsive">
			            <table class="table table-striped">
			              <thead class="form-thead">
			                <tr>
			                    <th>번호</th>
			                    <th>이미지</th>
			                    <th>품명</th>
			                    <th>사이즈</th>
			                    <th>가격</th>
			                    <th></th>
			                </tr>
			              </thead>
			              <tbody>
		                	<c:forEach var="row" items="${bList}">
				                <tr>
				                	<td>${row.num}</td>
				                	<td>
				                		<img class="img-responsive img-rounded" style="width: 50px; height: 60px;" src = ${row.imageURL}>
				                	</td>
				                	<td>${row.name}</td>
				                	<td>regular<br>large</td>
				                	<td>${row.rPrice}<br>${row.lPrice}</td>
				                	<td>
				                		<form method="post" action="manList/delete" >
					               			<button type="button" onclick="modalSetting('${row.imageURL}', '${row.name}', '${row.sPrice}', '${row.rPrice}', '${row.lPrice}', '${row.id}', 2, '${row.type}');" class="btn btn-default" data-toggle="modal" data-target="#myModal">수정</button>
					               			<input type="text" name="delId" style="display:none;" value="${row.id}">
					               			<input type="text" name="delkinds" style="display:none;" value="2">
					                     	<button type="submit" class="btn btn-default">삭제</button>
				                     	</form>
				                    </td>  
				                </tr>
			                </c:forEach>
		                </tbody>
		            </table>
		            
		          </div> 
               	</div>
               	
               	<div role="tabpanel" class="tab-pane fade" id="salad" aria-labelledby="salad-tab">
	               	<div class="table-responsive">
			            <table class="table table-striped">
			              <thead class="form-thead">
			                <tr>
			                    <th>번호</th>
			                    <th>이미지</th>
			                    <th>품명</th>
			                    <th>사이즈</th>
			                    <th>가격</th>
			                    <th></th>
			                </tr>
			              </thead>
			              <tbody>
		                	<c:forEach var="row" items="${dList}">
				                <tr>
				                	<td>${row.num}</td>
				                	<td>
				                		<img class="img-responsive img-rounded" style="width: 50px; height: 60px;" src = ${row.imageURL}>
				                	</td>
				                	<td>${row.name}</td>
				                	<td>regular</td>
				                	<td>${row.rPrice}</td>
				                	<td>
				                		<form method="post" action="manList/delete" >
					               			<button type="button" onclick="modalSetting('${row.imageURL}', '${row.name}', '${row.sPrice}', '${row.rPrice}', '${row.lPrice}', '${row.id}', 3, '${row.type}');" class="btn btn-default" data-toggle="modal" data-target="#myModal">수정</button>
					               			<input type="text" name="delId" style="display:none;" value="${row.id}">
					               			<input type="text" name="delkinds" style="display:none;" value="3">
					                     	<button type="submit" class="btn btn-default">삭제</button>
				                     	</form>
				                    </td>  
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
			                <tr>
			                    <th>번호</th>
			                    <th>이미지</th>
			                    <th>품명</th>
			                    <th>사이즈</th>
			                    <th>가격</th>
			                    <th></th>
			                </tr>
			              </thead>
			              <tbody>
		                	<c:forEach var="row" items="${sList}">
				                <tr>
				                	<td>${row.num}</td>
				                	<td>
				                		<img class="img-responsive img-rounded" style="width: 50px; height: 60px;" src = ${row.imageURL}>
				                	</td>
				                	<td>${row.name}</td>
				                	<td>small<br>regular</td>
				                	<td>${row.sPrice}<br>${row.rPrice}</td>
				                	<td>
				                		<form method="post" action="manList/delete" >
					               			<button type="button" onclick="modalSetting('${row.imageURL}', '${row.name}', '${row.sPrice}', '${row.rPrice}', '${row.lPrice}', '${row.id}', 4, '${row.type}');" class="btn btn-default" data-toggle="modal" data-target="#myModal">수정</button>
					               			<input type="text" name="delId" style="display:none;" value="${row.id}">
					               			<input type="text" name="delkinds" style="display:none;" value="4">
					                     	<button type="submit" class="btn btn-default">삭제</button>
				                     	</form>
				                    </td>  
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
			                <tr>
			                    <th>번호</th>
			                    <th>이미지</th>
			                    <th>품명</th>
			                    <th>사이즈</th>
			                    <th>가격</th>
			                    <th></th>
			                </tr>
			              </thead>
			              <tbody>
		                	<c:forEach var="row" items="${tList}">
				                <tr>
				                	<td>${row.num}</td>
				                	<td>
				                		<img class="img-responsive img-rounded" style="width: 50px; height: 60px;" src = ${row.imageURL}>
				                	</td>
				                	<td>${row.name}</td>
				                	<td>regular<br>large</td>
				                	<td>${row.rPrice}<br>${row.lPrice}</td>
				                	<td>
				                		<form method="post" action="manList/delete" >
					               			<button type="button" onclick="modalSetting('${row.imageURL}', '${row.name}', '${row.sPrice}', '${row.rPrice}', '${row.lPrice}', '${row.id}', 4, '${row.type}');" class="btn btn-default" data-toggle="modal" data-target="#myModal">수정</button>
					               			<input type="text" name="delId" style="display:none;" value="${row.id}">
					               			<input type="text" name="delkinds" style="display:none;" value="5">
					                     	<button type="submit" class="btn btn-default">삭제</button>
				                     	</form>
				                    </td>  
				                </tr>
			                </c:forEach>
			        	</tbody>
		            </table>
		          </div> 
               	</div>
               	
	      	</div>
          </div>
          
          <button class="btn btn-default" data-toggle="modal" data-target="#myModal" onclick="init()">상품추가</button>
	 
          <!-- Modal -->
          <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">

                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title" id="myModalLabel">상품 추가</h4>
                </div>
                <form method="post" action="manList/productInsert" enctype="multipart/form-data">
                  <div class="modal-body">
                    <div class="container-fluid">
                      <div class="col-xs-4 modal-data" id= "image">
                        <div id="image-div" style="height: 100%; width: 100%">
                          <img class="img-responsive img-rounded" id="coffeImage" style="width: 150px; height: 180px;" src = "images/no_image.jpg">
                        </div>
                        <button class="modal-btn btn btn-default" id="btn-upload" onfocus="this.blur();">이미지 추가</button>
                        <input type='file' id='file' name='file' style="width:0; height: 0;"/>
                      </div>
                      <div class="col-xs-8 modal-data">
                      	<div class="row" id ="data">
                          <label class ="form-label col-xs-2 modal-label">품명 :</label>
                          <input type="text" id="name" name="name" class="form-input col-xs-3"  required>
                          <label class ="form-label col-xs-2 modal-label">종류 :</label>
                          <select class = "form-input col-xs-3" id="kinds" name="kinds" onchange="change(this);" required>
                          	<option value = "1">음료</option>
                          	<option value = "2">죽</option>
                          	<option value = "3">샐러드</option>
                          	<option value = "4">국</option>
                          	<option value = "5">찌게</option>
                          </select>
                        </div>
                        <div class="row" id ="data">
                          <label class ="form-label col-xs-2 modal-label">Size :</label>
                          <label class ="form-label col-xs-2 modal-sizelabel">Small</label>
                          <div class="col-xs-1"></div>
                          <label class ="form-label col-xs-2 modal-label">가격 :</label>

                          <input type="text" id="sPrice" name="sPrice" class="form-input col-xs-3"  required>
                        </div>
                        <div class="row" id ="data">
                            <label class ="form-label col-xs-2 modal-label">Size :</label>
                            <label class ="form-label col-xs-2 modal-sizelabel">Regular</label>
                            <div class="col-xs-1"></div>
                            <label class ="form-label col-xs-2 modal-label">가격 :</label>
  
                            <input type="text" id="rPrice" name="rPrice"class="form-input col-xs-3" required>
                          </div>
                          <div class="row" id ="data">
                              <label class ="form-label col-xs-2 modal-label">Size :</label>
                              <label class ="form-label col-xs-2 modal-sizelabel">Large</label>
                              <div class="col-xs-1"></div>
                              <label class ="form-label col-xs-2 modal-label">가격 :</label>
    
                              <input type="text" id="lPrice" name="lPrice" class="form-input col-xs-3" required>
                            </div>
                            
                        	<div class="row" id ="data">
                        		 <div class="btn-group col-xs-12" data-toggle="buttons">
								  <label class="btn btn-default active col-xs-4">
								    <input type="radio" name="radioOptions" id="radioOption1" autocomplete="off" value="H"> HOT
								  </label>
								  <label class="btn btn-default  col-xs-4">
								    <input type="radio" name="radioOptions" id="radioOption2" autocomplete="off" value="C"> ICE
								  </label>
								  <label class="btn btn-default  col-xs-4">
								    <input type="radio" name="radioOptions" id="radioOption3" autocomplete="off" value="HC"> HOT&ICE
								  </label>
								</div>
								
								<input type="text" name="radioVal" id="radioVal" style="display:none;" value="">
                        	</div>
                      </div>
                    </div>
                  </div>

                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                    <input type="text" id="uuid" name="uuid" style="display:none;" value="blank">
                    <button type="submit" class="btn btn-primary">등록</button>
                  </div>
                </form>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>
        <script src= "https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>

        <script>
          
          var file;

          $(document).ready(function(){
            var fileTarget = $("#file");
            fileTarget.on("change", function(){

              ext = $(this).val().split('.').pop().toLowerCase(); //확장자
        
              //배열에 추출한 확장자가 존재하는지 체크
              if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
                resetImage();
                window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
              } else {
                file = fileTarget.prop("files")[0];
                //console.log(file);
                //file.blobURL();
                blobURL = window.URL.createObjectURL(file);
                $('#coffeImage').attr('src', blobURL);
                $('#image-div').slideDown(); //업로드한 이미지 미리보기 
                $(this).slideUp(); //파일 양식 감춤
              }
            });
            
            $("input[name='radioOptions']").on("change", function(){
            	var val = $(this).val();
            	console.log("change" + val);
            	$('#radioVal').val(val);
            });
            
            //var radio
          });
          
          $(function(){          
            $('#btn-upload').click(function(e){
              e.preventDefault();  
              $("#file").click();             
            });                         
          });

          function resetImage(){
            $('#coffeImage').attr('src', "images/no_image.jpg");
            $('#image-div').slideDown(); //업로드한 이미지 미리보기 
          }
          
          function resetData(){
        	  $('#name').val("");
        	  $('#sPrice').val("");
        	  $('#rPrice').val("");
        	  $('#lPrice').val("");
        	  $('#uuid').val("blank");
        	  $('#kinds').val("1").prop("selected", true);
        	  $('#radioVal').val("H");
        	  $('[data-toggle="buttons"] :radio').prop('checked', false);
        	   // Select all label elements within your toggle and remove the active class
        	   $('[data-toggle="buttons"] label').removeClass('active');

        	   // Set the first one as checked and selected
        	   //$('[data-toggle="buttons"] :radio:first').addClass('active');
        	   // Do the same thing for the active indicator
        	   $('[data-toggle="buttons"] label:first').addClass('active');
        	  //$("#input:radio[name=radioOptions]").removeAttr("checked");
        	 // $("input[name='radioOptions'][value='1']").prop("checked", true);
        	  $("#radioOption1").prop("checked", true);
        	   console.log($("input[name='radioOptions']:checked").val());
          }
          
          function init(){
        	  resetImage();
        	  resetData();
          }
          
          function modalSetting(url, name, s, r, l, id, kinds, type){
        	  
        	$('#coffeImage').attr('src', url);
            $('#image-div').slideDown(); //업로드한 이미지 미리보기 
        	$('#name').val(name);
            if(s == "0") $("#sPrice").attr("readOnly", true);
            if(r == "0") $("#rPrice").attr("readOnly", true);
            if(l == "0") $("#lPrice").attr("readOnly", true);
        	$('#sPrice').val(s);
        	$('#rPrice').val(r);
        	$('#lPrice').val(l);
        	$('#uuid').val(id);
        	console.log(kinds);
        	$('#kinds').val(kinds).prop("selected", true);
        	$('#radioVal').val(type);
        	$('[data-toggle="buttons"] :radio').prop('checked', false);
        	$('[data-toggle="buttons"] label').removeClass('active');
			
        	console.log(type);
        	console.log($('#radioVal').val());
        	if(type == 'H'){
	        	$('[data-toggle="buttons"] label:first').addClass('active');
	        	$("#radioOption1").prop("checked", true);
        	} else if(type == 'C'){
        		$('[data-toggle="buttons"] label:first').next().addClass('active');
	        	$("#radioOption2").prop("checked", true);
        	} else if(type == 'HC'){
        		$('[data-toggle="buttons"] label:first').next().next().addClass('active');
	        	$("#radioOption3").prop("checked", true);
        	}
        	 console.log($("input[name='radioOptions']:checked").val());
          }
          
          
          function change(elm){
        	  if($(elm).val() == "2"){
        		  $("#sPrice").val("0");
        		  $("#sPrice").attr("readOnly", true);
        		  $("#lPrice").attr("readOnly", false);
        		  $("#rPrice").attr("readOnly", false);
        		  $("#radioVal").val("0");
        		  $('[data-toggle="buttons"] :radio').attr("disabled", true);
        		  $('[data-toggle="buttons"] label').attr("disabled", true);
        	  }
        	  else if($(elm).val() == "3"){
        		  $("#sPrice").val("0");
        		  $("#sPrice").attr("readOnly", true);
        		  $("#lPrice").val("0");
        		  $("#lPrice").attr("readOnly", true);
        		  $("#rPrice").attr("readOnly", false);
        		  $("#radioVal").val("0");
        		  $('[data-toggle="buttons"] :radio').attr("disabled", true);
        		  $('[data-toggle="buttons"] label').attr("disabled", true);
        	  }
        	  else if($(elm).val() == "4"){
        		  $("#lPrice").val("0");
        		  $("#lPrice").attr("readOnly", true);
        		  $("#sPrice").attr("readOnly", false);
        		  $("#rPrice").attr("readOnly", false);
        		  $("#radioVal").val("0");
        		  $('[data-toggle="buttons"] :radio').attr("disabled", true);
        		  $('[data-toggle="buttons"] label').attr("disabled", true);
        	  }
        	  else if($(elm).val() == "5"){
        		  $("#sPrice").val("0");
        		  $("#sPrice").attr("readOnly", true);
        		  $("#rPrice").attr("readOnly", false);
        		  $("#lPrice").attr("readOnly", false);
        		  $("#radioVal").val("0");
        		  $('[data-toggle="buttons"] :radio').attr("disabled", true);
        		  $('[data-toggle="buttons"] label').attr("disabled", true);
        	  }
        	  else{
        		  $("#sPrice").attr("readOnly", false);
        		  $("#lPrice").attr("readOnly", false);
        		  $("#rPrice").attr("readOnly", false);
        		  $('[data-toggle="buttons"] :radio').attr("disabled", false);
        		  $('[data-toggle="buttons"] label').attr("disabled", false);
        		  $('#radioVal').val("1");
            	  $('[data-toggle="buttons"] :radio').prop('checked', false);
            	  $('[data-toggle="buttons"] label').removeClass('active');
            	  $('[data-toggle="buttons"] label:first').addClass('active');
            	  $("#radioOption1").prop("checked", true);
            	   console.log($("input[name='radioOptions']:checked").val());
        	  }
        	  
          }
        </script>
    </body>
</html>