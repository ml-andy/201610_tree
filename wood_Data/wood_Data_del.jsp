<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>子選單維護功能-刪除</title>
<link href="css.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/common1.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script language="JavaScript" type="text/JavaScript">
$(document).ready(function() {
	
	$("#btn_query").click(function() {
		$("#form1").submit();
	});
});
</script>
<script language="JavaScript" type="text/JavaScript">

function submitAdd(){
  document.getElementById("method").value="delExect";
  document.form1.action="wood_DataAction.do";
  document.form1.submit();
}

</script>
</head>
<body class="bodyWorkArea" >
<form name="form1" method="post" id="form1" action="wood_DataAction.do">
<input type="hidden" name="method" value="delExect">


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
      			 								資料維護功能-刪除
     											</td>
     										</tr>
     									</table>
     								</td>	
     							</tr>
     	 <tr>
		<td class="QueryTable_SubTitle">名稱</td>
		<input type="hidden" name="id" value="<c:out value="${wood_DataForm.id}"/>">
            <td class="QueryTable_Content">
            	<c:out value="${wood_DataForm.dataname}"/>
      		</td> 
      		
        </tr>
        <tr>
             <td class="td_Value_left"  colspan="4">
                <table width="100%" border="0">
  		<tr> 
                  <td width="280">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp</td>
                  <td width="83">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                      <input type="button" id="btn_query" name="btn_query" value="確認" />
                     </td>
                  
                </tr>
                </table>
             </td>
        </tr>
      </table>
     
         <!--/table: QueryForm-->
<!--/Section:QueryMainForm-->
</table>
<!--/table: Whole-->
<br>

</form>
</body>
</html>
