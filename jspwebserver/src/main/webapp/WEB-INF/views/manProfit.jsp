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
        <link class="include" rel="stylesheet" href="css/jquery.jqplot.css">
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
            <li><a href="manjob">직원관리</a></li>
            <li><a href="manStock">재고관리</a></li>
            <li  class="active"><a href="manProfit">판매실적<span class="sr-only">(current)</span></a></li>
          </ul>
        </div>
        
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <image class="img-responsive center-block img-rounded" src = "images/main_banner.jpg">
            <div class="form-subject">
                판매실적
            </div>
            <hr class="form-hr">
         	
         <div role="tabpanel" id="tabs"> 
            
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active"><a href="#month" id="month-tab" aria-controls="month" role="tab" data-toggle="tab" class="custom-tab">월별</a></li>
            <li role="presentation"><a href="#age" id="age-tab" aria-controls="age" role="tab" data-toggle="tab" class="custom-tab">연령별 선호도</a></li>
            <li role="presentation"><a href="#gender" id="gender-tab" aria-controls="gender" role="tab" data-toggle="tab" class="custom-tab">성별 선호도</a></li>
            <li role="presentation"><a href="#menu" id="menu-tab" aria-controls="menu" role="tab" data-toggle="tab" class="custom-tab">메뉴별 선호도</a></li>
          </ul>
      
          <div class = "tab-content">
            <div role="tabpanel" class="tab-pane fade in active" id="month" aria-labelledby="month-tab">
              <div id="graph" style="width: 90%; height:400px;"></div> 
            </div>

            <div role="tabpanel" class="tab-pane fade active" id="age" aria-labelledby="age-tab">
            	<div role="tabpanel" id="tabs">
		          <ul class="nav nav-tabs" role="tablist">
		            <li role="presentation" class="active"><a href="#age10" id="age10-tab" aria-controls="age10" role="tab" data-toggle="tab" class="custom-tab">10대</a></li>
		            <li role="presentation"><a href="#age20" id="age20-tab" aria-controls="age20" role="tab" data-toggle="tab" class="custom-tab">20대</a></li>
		            <li role="presentation"><a href="#age30" id="age30-tab" aria-controls="age30" role="tab" data-toggle="tab" class="custom-tab">30대</a></li>
		            <li role="presentation"><a href="#age40" id="age40-tab" aria-controls="age40" role="tab" data-toggle="tab" class="custom-tab">40대</a></li>
		            <li role="presentation"><a href="#ageEtc" id="ageEtc-tab" aria-controls="ageEtc" role="tab" data-toggle="tab" class="custom-tab">기타</a></li>
		          </ul>
		      
		          <div class = "tab-content">
		            <div role="tabpanel" class="tab-pane fade in active" id="age10" aria-labelledby="age10-tab">
		               <div id="age10Plot" style="width: 90%; height:400px;"></div> 
		            </div>
		
		            <div role="tabpanel" class="tab-pane fade active" id="age20" aria-labelledby="age20-tab">
		               <div id="age20Plot" style="width: 90%; height:400px;"></div>
		            </div>
		
		            <div role="tabpanel" class="tab-pane fade active" id="age30" aria-labelledby="age30-tab">
		               <div id="age30Plot" style="width: 90%; height:400px;"></div>
		            </div>
		
		            <div role="tabpanel" class="tab-pane fade active" id="age40" aria-labelledby="age40-tab">
		               <div id="age40Plot" style="width: 90%; height:400px;"></div>
		            </div>
		            
		            <div role="tabpanel" class="tab-pane fade active" id="ageEtc" aria-labelledby="ageEtc-tab">
		               <div id="ageEtcPlot" style="width: 90%; height:400px;"></div>
		            </div>
		            
		          </div>
		        
		        </div>
                
            </div>

            <div role="tabpanel" class="tab-pane fade active" id="gender" aria-labelledby="gender-tab">
              <div role="tabpanel" id="tabs">
		          <ul class="nav nav-tabs" role="tablist">
		            <li role="presentation" class="active"><a href="#male" id="male-tab" aria-controls="male" role="tab" data-toggle="tab" class="custom-tab">남자</a></li>
		            <li role="presentation"><a href="#female" id="female-tab" aria-controls="female" role="tab" data-toggle="tab" class="custom-tab">여자</a></li>
		          </ul>
		      
		          <div class = "tab-content">
		            <div role="tabpanel" class="tab-pane fade in active" id="male" aria-labelledby="male-tab">
		               <div id="malePlot" style="width: 90%; height:400px;"></div> 
		            </div>
		
		            <div role="tabpanel" class="tab-pane fade active" id="female" aria-labelledby="female-tab">
		               <div id="femalePlot" style="width: 90%; height:400px;"></div>
		            </div>            
		          </div>
		        </div>
            </div>

            <div role="tabpanel" class="tab-pane fade active" id="menu" aria-labelledby="menu-tab">
              <div role="tabpanel" id="tabs">
		          <ul class="nav nav-tabs" role="tablist">
		            <li role="presentation" class="active"><a href="#drink" id="drink-tab" aria-controls="drink" role="tab" data-toggle="tab" class="custom-tab">음료</a></li>
		            <li role="presentation"><a href="#congee" id="congee-tab" aria-controls="congee" role="tab" data-toggle="tab" class="custom-tab">죽</a></li>
		            <li role="presentation"><a href="#salad" id="salad-tab" aria-controls="salad" role="tab" data-toggle="tab" class="custom-tab">샐러드</a></li>
		            <li role="presentation"><a href="#soup" id="soup-tab" aria-controls="soup" role="tab" data-toggle="tab" class="custom-tab">국</a></li>
		            <li role="presentation"><a href="#stew" id="stew-tab" aria-controls="stew" role="tab" data-toggle="tab" class="custom-tab">찌게</a></li>
		          </ul>
		      
		          <div class = "tab-content">
		            <div role="tabpanel" class="tab-pane fade in active" id="drink" aria-labelledby="drink-tab">
		               <div id="drinkPlot" style="width: 90%; height:400px;"></div> 
		            </div>
		
		            <div role="tabpanel" class="tab-pane fade active" id="congee" aria-labelledby="congee-tab">
		               <div id="congeePlot" style="width: 90%; height:400px;"></div>
		            </div>
		            
		            <div role="tabpanel" class="tab-pane fade active" id="salad" aria-labelledby="salad-tab">
		               <div id="saladPlot" style="width: 90%; height:400px;"></div>
		            </div>          
		            
		            <div role="tabpanel" class="tab-pane fade active" id="soup" aria-labelledby="soup-tab">
		               <div id="soupPlot" style="width: 90%; height:400px;"></div>
		            </div>
		            
		            <div role="tabpanel" class="tab-pane fade active" id="stew" aria-labelledby="stew-tab">
		               <div id="stewPlot" style="width: 90%; height:400px;"></div>
		            </div>                    
		          </div>
		        </div> 
            </div>
            
          
                
          </div>
        
        </div>
      
     
      
    </div>
  </div>
</div>
    <script src= "https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/jquery.jqplot.js"></script>
    <script type="text/javascript" src="js/jquery.jqplot.min.js"></script>
    <script type="text/javascript" src="js/plugins/jqplot.categoryAxisRenderer.js"></script>
    <script type="text/javascript" src="js/plugins/jqplot.barRenderer.js"></script>
    <script type="text/javascript" src="js/plugins/jqplot.pieRenderer.js"></script>
    <script type="text/javascript" src="js/plugins/jqplot.pointLabels.js"></script>
    
    <script>
    	var plot1;
    	var agePlot1;
    	var agePlot2;
    	var agePlot3;
    	var agePlot4;
    	var agePlot5;
    	var genderPlot1;
    	var genderPlot2;
    	var menuPlot1;
    	var menuPlot2;
    	var menuPlot3;
    	
      $(document).ready(function(){
        $.jqplot.config.enablePlugins = true;
        
        var data1 = [];
        <c:forEach var="row" items="${totalProfit}">
			data1.push('${row}');
		</c:forEach>
		
		var average = 0;
		for(var i=0; i<data1.length; i++){
			average += parseInt(data1[i]);
		}
		console.log(average);
		average = average/4;
		console.log(average);
		
		console.log(data1);
        var ticks1 = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];

        plot1 = $.jqplot('graph', [data1] , {
              title: '2018년 월별 수익',
              animate: !$.jqplot.use_excanvas,
              seriesDefaults:{
                  renderer:$.jqplot.BarRenderer,
                  pointLabels: { show: true },
                  rendererOptions: {
                      varyBarColor: true
                  }
              },
              axes: {
                xaxis: {
                  renderer: $.jqplot.CategoryAxisRenderer,
                  label: "월별",
                  ticks: ticks1
                },
                yaxis: {
                  label: "수익",
                  max : average,
                  min : 0
                }
              },
              highlighter: { show: false },
              seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6',
            	  '#A977B5', '#FFFFA6', '#6DA8A8', '#DA8DB3', '#8784BD']
            });      
          });
      
      $(document).ready(function(){
    	  
    	  var age10 = [];
    	  var age20 = [];
    	  var age30 = [];
    	  var age40 = [];
    	  var ageEtc = [];
    	  
    	  <c:forEach var="row" items="${age10Map}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  	age10.push(tmp);
		  </c:forEach>
		  console.log(age10);
		  //sortArr(age10);
		  
		  <c:forEach var="row" items="${age20Map}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  	age20.push(tmp);
		  </c:forEach>
		  console.log(age20);
		  //sortArr(age20);
		  
		  <c:forEach var="row" items="${age30Map}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  	age30.push(tmp);
		  </c:forEach>
		  console.log(age30);
		  //sortArr(age30);
		  
		  <c:forEach var="row" items="${age40Map}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  	age40.push(tmp);
		  </c:forEach>
		  console.log(age40);
		 // sortArr(age40);
		  
		  <c:forEach var="row" items="${ageEtcMap}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  	ageEtc.push(tmp);
		  </c:forEach>
		  console.log(ageEtc);
		  //sortArr(ageEtc);
    	  
    	  agePlot1 = $.jqplot('age10Plot', [age10], {
    	        gridPadding: {top:0, bottom:38, left:0, right:0},
    	        seriesDefaults:{
	  	            renderer:$.jqplot.PieRenderer, 
	  	            trendline:{ show:false }, 
	  	            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6, dataLabelFontSize:50 },
	  	        },
	  	        legend:{
	  	            show:true, 
	  	            location:'w',
	  	            fontSize: 15
	  	        },
    	        seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']
    	    });
    	  
    	  agePlot2 = $.jqplot('age20Plot', [age20], {
	  	        gridPadding: {top:0, bottom:38, left:0, right:0},
	  	      seriesDefaults:{
	  	            renderer:$.jqplot.PieRenderer, 
	  	            trendline:{ show:false }, 
	  	            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6, dataLabelFontSize:50 },
	  	        },
	  	        legend:{
	  	            show:true, 
	  	            location:'w',
	  	            fontSize: 15
	  	        },
	  	      	seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']
	  	    }); 
    	  
    	  agePlot3 = $.jqplot('age30Plot', [age30], {
	  	        gridPadding: {top:0, bottom:38, left:0, right:0},
	  	      seriesDefaults:{
	  	            renderer:$.jqplot.PieRenderer, 
	  	            trendline:{ show:false }, 
	  	            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6, dataLabelFontSize:50 },
	  	        },
	  	        legend:{
	  	            show:true, 
	  	            location:'w',
	  	            fontSize: 15
	  	        },
	  	      	seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']
	  	    }); 
    	  agePlot4 = $.jqplot('age40Plot', [age40], {
	  	        gridPadding: {top:0, bottom:38, left:0, right:0},
	  	      seriesDefaults:{
	  	            renderer:$.jqplot.PieRenderer, 
	  	            trendline:{ show:false }, 
	  	            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6, dataLabelFontSize:50 },
	  	        },
	  	        legend:{
	  	            show:true, 
	  	            location:'w',
	  	            fontSize: 15
	  	        },
	  	      	seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']
	  	    }); 
    	  
    	  agePlot5 = $.jqplot('ageEtcPlot', [ageEtc], {
	  	        gridPadding: {top:0, bottom:38, left:0, right:0},
	  	      seriesDefaults:{
	  	            renderer:$.jqplot.PieRenderer, 
	  	            trendline:{ show:false }, 
	  	            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6, dataLabelFontSize:50 },
	  	        },
	  	        legend:{
	  	            show:true, 
	  	            location:'w',
	  	            fontSize: 15
	  	        },
	  	      	seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']
	  	    });
	      });
      
      $(document).ready(function(){
    	  
    	  var male = [];
    	  var female = [];
    	  
    	  <c:forEach var="row" items="${maleMap}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  	male.push(tmp);
		  </c:forEach>
// sortArr(male);
		  
		  <c:forEach var="row" items="${femaleMap}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  	female.push(tmp);
		  </c:forEach>
		 // sortArr(female);
    	  
    	  genderPlot1 = $.jqplot('malePlot', [male], {
	  	        gridPadding: {top:0, bottom:38, left:0, right:0},
	  	      seriesDefaults:{
	  	            renderer:$.jqplot.PieRenderer, 
	  	            trendline:{ show:false }, 
	  	            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6, dataLabelFontSize:50 },
	  	        },
	  	        legend:{
	  	            show:true, 
	  	            location:'w',
	  	            fontSize: 15
	  	        },
  	        seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']       
	  	    });
	      genderPlot2 = $.jqplot('femalePlot', [female], {
		        gridPadding: {top:0, bottom:38, left:0, right:0},
		        seriesDefaults:{
	  	            renderer:$.jqplot.PieRenderer, 
	  	            trendline:{ show:false }, 
	  	            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6, dataLabelFontSize:50 },
	  	        },
	  	        legend:{
	  	            show:true, 
	  	            location:'w',
	  	            fontSize: 15
	  	        },
    	        seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']       
		    });
      });
      
      $(document).ready(function(){
    	  
    	  var drink = []
    	  var congee = []
    	  var salad = []
    	  var soup = []
    	  var stew = []
    	  
    	  <c:forEach var="row" items="${drinkMap}">
    	  	var tmp = [];
    	  	tmp.push('${row.key}');
    	  	tmp.push(parseInt('${row.value}'));
    	  	drink.push(tmp);
		  </c:forEach>
		  //sortArr(drink);
		  
		  <c:forEach var="row" items="${congeeMap}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  congee.push(tmp);
		  </c:forEach>
		 // sortArr(congee);
		  
		  <c:forEach var="row" items="${saladMap}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  salad.push(tmp);
		  </c:forEach>
		 // sortArr(salad);
		 <c:forEach var="row" items="${soupMap}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  soup.push(tmp);
		  </c:forEach>
		  
		  <c:forEach var="row" items="${stewMap}">
	  	  	var tmp = [];
	  	  	tmp.push('${row.key}');
	  	  	tmp.push(parseInt('${row.value}'));
	  	  stew.push(tmp);
		  </c:forEach>
		  
		  console.log(drink);
		  console.log(congee);
		  console.log(salad);
		  console.log(soup);
		  console.log(stew);
    	  
    	  menuPlot1 = $.jqplot('drinkPlot', [drink], {
	  	        gridPadding: {top:0, bottom:38, left:0, right:0},
	  	        seriesDefaults:{
	  	            renderer:$.jqplot.PieRenderer, 
	  	            trendline:{ show:false }, 
	  	            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6, dataLabelFontSize:50 },
	  	        },
	  	        legend:{
	  	            show:true, 
	  	            location:'w',
	  	            fontSize: 15
	  	        },
	  	        seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']
	  	       
	  	    });
	      menuPlot2 = $.jqplot('congeePlot', [congee], {
		        gridPadding: {top:0, bottom:38, left:0, right:0},
		        seriesDefaults:{
		            renderer:$.jqplot.PieRenderer, 
		            trendline:{ show:false }, 
		            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6 }
		        },
		        legend:{
		            show:true, 
		            location:'w',
		            fontSize: 15
		        },
	  	        seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6'] 
		    });
	      menuPlot3 = $.jqplot('saladPlot', [salad], {
		        gridPadding: {top:0, bottom:38, left:0, right:0},
		        seriesDefaults:{
		            renderer:$.jqplot.PieRenderer, 
		            trendline:{ show:false }, 
		            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6 }
		        },
		        legend:{
		            show:true, 
		            location:'w',
		            fontSize: 15
		        },
	  	        seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']     
		    });
	      menuPlot4 = $.jqplot('soupPlot', [soup], {
		        gridPadding: {top:0, bottom:38, left:0, right:0},
		        seriesDefaults:{
		            renderer:$.jqplot.PieRenderer, 
		            trendline:{ show:false }, 
		            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6 }
		        },
		        legend:{
		            show:true, 
		            location:'w',
		            fontSize: 15
		        },
	  	        seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']     
		    });
	      menuPlot3 = $.jqplot('stewPlot', [stew], {
		        gridPadding: {top:0, bottom:38, left:0, right:0},
		        seriesDefaults:{
		            renderer:$.jqplot.PieRenderer, 
		            trendline:{ show:false }, 
		            rendererOptions: { padding: 8, showDataLabels: true, sliceMargin:6 }
		        },
		        legend:{
		            show:true, 
		            location:'w',
		            fontSize: 15
		        },
	  	        seriesColors:['#7B93B4', '#F6A0AA', '#7BBD9D', '#DDF39E', '#FFDAA6']     
		    });
      });
      
      $(document).ready(function(){
          $('a[href="#month"]').tab('show');
          $('a[href="#age"]').tab('show');
    	  $('a[href="#age10"]').tab('show');
    	  $('a[href="#age20"]').tab('show');
    	  $('a[href="#age30"]').tab('show');
    	  $('a[href="#age40"]').tab('show');
    	  $('a[href="#ageEtc"]').tab('show');
          $('a[href="#age10"]').tab('show');
    	  $('a[href="#gender"]').tab('show');
    	  $('a[href="#male"]').tab('show');
    	  $('a[href="#female"]').tab('show');
    	  $('a[href="#male"]').tab('show');
    	  $('a[href="#menu"]').tab('show');
    	  $('a[href="#drink"]').tab('show');
    	  $('a[href="#congee"]').tab('show');
    	  $('a[href="#salad"]').tab('show');
    	  $('a[href="#soup"]').tab('show');
    	  $('a[href="#stew"]').tab('show');
          $('a[href="#month"]').tab('show');
          
          /*var activeTab = "#month";
          $('a[data-toggle="tab"]').on('shown.bs.tab', function (e){
        	  activeTab = $(e.target).attr('href');
          });*/
          
          /*$(window).resize(function(){
        	  var storeTab = "a[href="+ activeTab + "]";
        	  $('a[href="#month"]').tab('show');
        	  plot1.replot( { resetAxes: true } );
        	  
        	  $('a[href="#age"]').tab('show');
        	  $('a[href="#age10"]').tab('show');
        	  agePlot1.replot( { resetAxes: true } );
        	  $('a[href="#age20"]').tab('show');
        	  agePlot2.replot( { resetAxes: true } );
        	  $('a[href="#age30"]').tab('show');
        	  agePlot3.replot( { resetAxes: true } );
        	  $('a[href="#age40"]').tab('show');
        	  agePlot4.replot( { resetAxes: true } );
        	  $('a[href="#ageEtc"]').tab('show');
        	  agePlot5.replot( { resetAxes: true } );
        	  
        	  $('a[href="#gender"]').tab('show');
        	  $('a[href="#male"]').tab('show');
        	  genderPlot1.replot( { resetAxes: true } );
        	  $('a[href="#female"]').tab('show');
        	  genderPlot2.replot( { resetAxes: true } );
        	  
        	  $('a[href="#menu"]').tab('show');
        	  $('a[href="#drink"]').tab('show');
        	  menuPlot1.replot( { resetAxes: true } );
        	  $('a[href="#congee"]').tab('show');
        	  menuPlot2.replot( { resetAxes: true } );
        	  $('a[href="#salad"]').tab('show');
        	  menuPlot3.replot( { resetAxes: true } );
        	  // We've resized all, let's go back to the active tab.
        	  $(''+storeTab).tab('show');
          });*/
      });
      
      function sortArr(arr){
    	  var tmp;
    	  for(var i = 0; i < arr.length; i++){
    		  tmp = arr[i];
    		  console.log(tmp);
    		  if(tmp[0] == "기타"){
    			  arr.splice(i, 1);
    			  break;
    		  }
    	  }
    	  arr.push(tmp);
      }

    </script>
    </body>
</html>