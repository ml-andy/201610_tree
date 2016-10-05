<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/Functions" prefix="mytag"%> 




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增產品</title>
<link href="${pageContext.request.contextPath}/css.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.blockUI.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/js/common1.js"></script>
<style type="text/css">
fieldset.group  { 
  margin: 0; 
  padding: 0; 
  margin-bottom: 1.25em; 
  padding: .125em; 
} 

fieldset.group legend { 
  margin: 0; 
  padding: 0; 
  font-weight: bold; 
  margin-left: 20px; 
  font-size: 100%; 
  color: black; 
} 
ul.checkbox  { 
  margin: 0; 
  padding: 0; 
  margin-left: 20px; 
  list-style: none; 
} 

ul.checkbox li input { 
  margin-right: .25em; 
} 

ul.checkbox li { 
  border: 1px transparent solid; 
} 

ul.checkbox li label { 
  margin-left: ; 
} 
ul.checkbox li:hover, 
ul.checkbox li.focus  { 
  background-color: lightyellow; 
  border: 1px gray solid; 
  width: 12em; 
} 
 </style>
 <script>
$(document).ready(function() {
	var tcobj = "#" + "${param.tcobjname}";
	$("#content").val(window.opener.$(tcobj).val());
	$("#btn_send").click(function(){
		window.opener.sendContent(CKEDITOR.instances.content.getData());
		window.close();
	});
});
</script>

</head>
<body class="bodyWorkArea">
<form id="form1" name="form1" method="post" action="wood_DataAction.do">
<input type="hidden" name="method" value="query">
<input type="hidden" name="indexVlaue">

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
                      			<img border="0" src="${pageContext.request.contextPath}/images/icon_01.gif" width="30" height="28">       			
                  				</td>
			   									<td class="QueryTable_Title" width="85%">           
      			 								產品維護功能-新增
     											</td>
     										</tr>
     									</table>
     								</td>	
     							</tr>
     							
				<tr>
			             	<td class="QueryTable_SubTitle">
			             	<td><textarea rows="5" cols="50" class="ckeditor" name="content" id="content"></textarea> <br>
			             	<input type="button" id="btn_send" name="btn_send" value="帶入欄位">
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
<div id="messagebox" style="display:none; cursor: default">
       <table style="line-height: 30px;text-align: center;width:100%"> 
       	<tr>
       		<td>
       			<div id="message_content"></div> 
       	    </td>
       	</tr>        
       	<tr>
       		<td>
   	    	<input type="button" id="btn_close" value="關閉" onclick="$.unblockUI();"/>
       		</td>
       	</tr>
       </table> 	
</div>
</form>
</body>
</html>
