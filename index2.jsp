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
    <div class="title">木材標本館</div>
	  <table cellspacing="1" cellpadding="0" border="0" width=100% ID="Table2" class="index_box">
      <tr>
        <td class="index_info">
          <div class="w">
            林業試驗所木材標本館之設立起源於民國34年存放之日據時代製作的30件大型木材標本，民國73年大型木材標本典藏數增加至62件，為呈現木材不同切面的紋理而開始製作圓形的三切面標本207件，並製作尺寸較小易於館藏之木材標本館藏於木材標本館中，供學術研究及教學使用，而大型標本、圓形三切面標本和54種竹材標本則在木材展示館展示，提供國人認識木材之去處。<br /><br />
            木材標本館目前館藏國產木材有58科134屬265種，其中針葉樹材有32種，4400片標本，闊葉樹材有233種，27353片標本。蒐集國外產木材標本計含亞、美、歐、非及大洋洲等針葉樹材9科、40屬、218種，闊葉樹材163科、730屬、2,142種。
          </div>
        </td>
      </tr>
    </table>
  </div> <!--! end of #content -->
</div> <!--! end of #container -->

  
</form>
</body>
</html>
