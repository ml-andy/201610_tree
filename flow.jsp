<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title>mosaic</title>
  <meta name="description" content="mosaic">
  <meta name="keywords" content="jquery, pagination, javascript, plugin" />
  <meta name="author" content="Luís Almeida">

  <meta name="viewport" content="width=device-width,initial-scale=1">

  <link rel="stylesheet" href="master/css/style.css">
  <link rel="stylesheet" href="master/css/jPages.css">
  <link rel="stylesheet" href="master/css/animate.css">
  <link rel="stylesheet" href="master/css/github.css">

  <script type="text/javascript" src="master/js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="master/js/highlight.pack.js"></script>
  <script type="text/javascript" src="master/js/tabifier.js"></script>
  <script src="master/js/js.js"></script>
  <script src="master/js/jPages.js"></script>

  <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-28718218-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

  </script>

  <script>
  $(function(){
	    $("div.holder").jPages({
	      containerID : "movies",
	      previous : "←",
	      next : "→",
	      perPage : 10,
	      delay : 10
	    });
	  });
  </script>
<script language="JavaScript" type="text/JavaScript">
$(document).ready(function() {
	
	$("#btn_query").click(function() {
		$("#form1").submit();
	});
});
</script>
</head>
<body>
<form id="form1" name="form1" method="post" action="index.do">
<input type="hidden" id="method" name="method" value="queryExect">
<input type="hidden" id="indexVlaue" name="indexVlaue">
<div id="container" class="clearfix">

    <div id="sidebar">
      <h1 id="header">林業試驗所 </h1>
      <h2>選單</h2>
    <ul>
        <li><a href="index.do?method=index">資料查詢</a></li>
        <li><a href="index.do?method=flow">申請進度查詢</a></li>
        <li><a href="index.do?method=linkusIndex">聯絡我們</a></li>
       </ul>
    </div> <!--! end of #sidebar -->

    <div id="content" class="defaults">

      <h2>申請進度</h2>
		
      		
      <!-- navigation holder -->
      <div class="holder"></div>
		<logic:present name="indexFlowList" scope="session">
			<table>
        <thead><tr>
        			<th>申請者姓名</th>
        			<th>申請狀態</th>
        			<th>申請日期</th>
        		</tr>
        </thead>
        
        <tbody id="movies">
            <c:forEach items="${indexFlowList}" var="result" varStatus="status"> 
            	<tr>
            		<td>${result.name}</td>
            		<td>${result.status}</td>
            		<td>${result.applydate}</td>
            </tr>
            </c:forEach>
            
        </tbody>
		 </table>
		</logic:present>
		
      
    </div> <!--! end of #content -->
  </div> <!--! end of #container -->

  
</form>
</body>
</html>
