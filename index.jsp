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
  <script src="master/js/popup.js"></script>
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
  $(function() {
    $("div.holder").jPages({
      containerID: "itemContainer",
      previous : "←",
      next : "→",
      perPage:20,
      midRange: 5,
      direction: "random",
      animation: "flipInY"
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
  <h1 id="header">林業試驗所 </h1>
  <div id="sidebar">
    <ul>
      <li><a href="index.do?method=index">資料查詢</a></li>
      <li><a href="index.do?method=flow">申請進度查詢</a></li>
      <li><a href="index.do?method=linkusIndex">聯絡我們</a></li>
     </ul>
  </div> <!--! end of #sidebar -->
  <div id="content" class="defaults">
    <div class="title">資料查詢</div>
	  <table cellspacing="1" cellpadding="0" border="0"  width=100% ID="Table2">
			<tr>
        <td class="QueryTable_SubTitle">科名</td>
	      <td class="QueryTable_Content">
	        <input name="dataname1"  type="text" size="30">
	      </td>
			</tr>
			<tr>
      	<td class="QueryTable_SubTitle">屬名</td>
       	<td class="QueryTable_Content">
       		<input name="dataname2"  type="text" size="30" >
       	</td>
			</tr>
			<tr>
		 		<td class="QueryTable_SubTitle">種名</td>
	      <td class="QueryTable_Content">
	      	<input name="dataname3"  type="text" size="30" >
	      </td>
			</tr>
			<tr>
				<td class="search_btn">
    			<input type="button" id="btn_query" name="btn_query" value="查詢" />
    		</td>
			</tr>
    </table>
    <logic:present name="indexActionList" scope="session">
      <!-- item container -->
      <ul id="itemContainer">
      	<c:forEach items="${indexActionList}" var="result" varStatus="status"> 
  			 <li><img src="wood_DataAction.do?method=showTempImage&tempkey=${result.datapic}" alt="image" width="126" height="126"></li>
  		  </c:forEach>
      </ul>
      <!-- navigation holder -->
      <div class="holder"></div>
	  </logic:present>
  </div> <!--! end of #content -->
</div> <!--! end of #container -->
<div class="imgshow_popup">
  <div class="closebtn">X</div>
  <div class="prevbtn"></div>
  <div class="nextbtn"></div>
  <img src="" class="bigImg">
  <div class="cover"></div>
</div>
  
</form>
</body>
</html>
