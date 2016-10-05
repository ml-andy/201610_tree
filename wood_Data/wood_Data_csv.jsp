<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增子選單</title>
<link href="css.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/jquery.js"></script>
<script language="javascript" src="js/common1.js"></script>
<script language="JavaScript" type="text/JavaScript">
$(document).ready(function() {
	
	$("#btn_query").click(function() {
		$("#form1").submit();
	});
});
</script>

</head>
<body class="bodyWorkArea">

<input type="hidden" name="method" value="query">
<input type="hidden" name="indexVlaue">
<form id="form1" name="form1" enctype="multipart/form-data" method="post" action="wood_DataAction.do">
<input type="hidden" id="method" name="method" value="uploadExect">
<input type="hidden" id="indexVlaue" name="indexVlaue">
<!--table: Whole-->
<table width="89%" border="0" cellpadding="4" cellspacing="0" bordercolor="#ECE9D8" align="center" class="feature">
<!--Section:QueryMainForm-->
<tr>
	<td>
		<table border="1" width="100%" bordercolorlight="#EBEBEB" cellspacing="0" cellpadding="0" bordercolordark="#C0C0C0">
		     <tr>
		        <td> 
		        	<table  cellspacing="1" cellpadding="0" border="0"  width=100% ID="Table2">
      				    <tr>
      							<td colspan=4>
      								<table  cellspacing="1" cellpadding="0" border="0"  width=100% ID="Table2">
      									<tr>
      										<td class="QueryTable_Title" width="4%">
                      			<img border="0" src="images/icon_01.gif" width="30" height="28">       			
                  				</td>
			   									<td class="QueryTable_Title" width="85%">           
      			 								資料上傳CSV
     											</td>
     										</tr>
     									</table>
     								</td>	
     							</tr>
     							
				<tr>
			             	<td class="QueryTable_SubTitle">檔案</td>
					<td class="QueryTable_Content"><input type="file" name="file" id="file"></td> 
        			</tr>
        			<tr>
            				<td ></td>
            				<td>
            				<input type="button" id="btn_query" name="btn_query" value="匯入檔案" >
                		
                			</td>
        			</tr>
      				</table>
      			</td>
      		</tr>
      <br>
      <!--/table: MainForm--></td>
        
         
         <!--/table: QueryForm-->
<!--/Section:QueryMainForm-->
</table>
<!--/table: Whole-->
<br>

</form>
</body>
</html>
