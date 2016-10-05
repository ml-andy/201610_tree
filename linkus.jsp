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
<input type="hidden" id="method" name="method" value="linkus">
<div id="container" class="clearfix">

    <div id="sidebar">
      <h1 id="header">林業試驗所 </h1>
      <h2>選單</h2>
      <ul>
     <ul>
        <li><a href="index.do?method=index">資料查詢</a></li>
        <li><a href="index.do?method=flow">申請進度查詢</a></li>
        <li><a href="index.do?method=linkusIndex">聯絡我們</a></li>
       </ul>
    </div> <!--! end of #sidebar -->

    <div id="content" class="defaults">

      <h2>聯絡我們</h2>
		<table  cellspacing="1" cellpadding="0" border="0"  width=100% ID="Table2">
      				<tr>
			            	<td class="QueryTable_SubTitle">名稱</td>
      			       		<td class="QueryTable_Content">
      			       		<input name="customername"  type="text" size="30">
      			       		</td>
        			</tr>
        			<tr>
			            	<td class="QueryTable_SubTitle">意見說明</td>
      			       		<td class="QueryTable_Content">
      			       		<input name="customercontent"  type="text" size="30" >
      			       		</td>
        			</tr>
        			<tr>
        			 		<td class="QueryTable_SubTitle">電話</td>
      			       		<td class="QueryTable_Content">
      			       		<input name="customertel"  type="text" size="30" >
      			       		</td>
        			</tr>
        			<tr>
        			 		<td class="QueryTable_SubTitle">EMAIL</td>
      			       		<td class="QueryTable_Content">
      			       		<input name="customeremail"  type="text" size="30" >
      			       		</td>
        			</tr>
        			<tr>
            				<td colspan="2"></td>
            				<td>
                			<input type="button" id="btn_query" name="btn_query" value="確認" />
                			</td>
        			</tr>
      				</table>
     
    </div> <!--! end of #content -->
  </div> <!--! end of #container -->

  
</form>
</body>
</html>
