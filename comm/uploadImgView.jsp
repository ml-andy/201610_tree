<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<head>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.blockUI.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.tools/jquery.tools.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.Jcrop.css" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.Jcrop.js"></script>



<script>

$(document).ready(function() {
  alert("上傳檔案成功");	
	
});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HTML編輯器</title>

</head>
<body>
<img src="ViewHelperController.do?action=cropImgView"/>
	
</body>
</html>
