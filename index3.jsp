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

  <title>林業試驗所-木材標本館</title>
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
  <script type="text/javascript">
function image(img) {
    var src = img.src;
    window.open(src);
}
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
<jsp:include page="menu.jsp" flush="true" />
  <div id="content" class="defaults">
     <div class="title">林業試驗所&nbsp;&nbsp;&nbsp;木材標本館<br></br>資料查詢</div>

	  
	      
    <logic:present name="fileIndexActionList" scope="session">
      <!-- item container -->
      <ul id="itemContainer">
      	<c:forEach items="${fileIndexActionList}" var="result" varStatus="status"> 
  			 <li><img src="fileUpload_DbAction.do?method=showTempImage&tempkey=${result.productpic}" big="fileUpload_DbAction.do?method=showTempImage&tempkey=${result.productpic}" alt="image" width="126" height="126"></li>
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
