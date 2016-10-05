<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>子選單查詢</title>
<link href="css.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/common1.js"></script>
<script language="javascript" src="js/jquery.js"></script>
<script language="JavaScript" type="text/JavaScript">
$(document).ready(function() {
	
	$("#btn_query").click(function() {
		$("#form1").submit();
	});
});
</script>
<script language="JavaScript" type="text/JavaScript">

function submitAdd(method){
  document.getElementById("method").value=method;
  document.form1.action="wood_DataAction.do";
  document.form1.submit();
}
function submitupd(indexvalue,methodvalue){
  document.getElementById("method").value=methodvalue;
  document.getElementById("indexVlaue").value=indexvalue;
  document.form1.action="wood_DataAction.do";
  document.form1.submit();
}
function submitDel(indexvalue,methodvalue){
	$("#indexVlaue").val(indexvalue);
	$("#method").val('delInit');
	  document.form1.action="wood_DataAction.do";
	  document.form1.submit();
	}
function shoeOneUsrRecord(txLogSno,clientAppSeq,txid){
  document.getElementById("method").value="singal";
  document.getElementById("txlogsno").value=txLogSno;
  document.getElementById("clientappseq").value=clientAppSeq;
  document.getElementById("txid").value=txid;
  document.form1.action="errCodeAction.do";
  document.form1.submit();
}
function firstPage(){
  document.forms[0].action="groupAction.do?method=firstPage";
  document.forms[0].submit();
}
function previousPage(){
  document.forms[0].action="groupAction.do?method=previousPage";
  document.forms[0].submit();
}
function nextPage(){
  document.forms[0].action="groupAction.do?method=nextPage";
  document.forms[0].submit();
}
function lastPage(){
  document.forms[0].action="groupAction.do?method=lastPage";
  document.forms[0].submit();
}
function assignedPage(pageNo){
 
  document.forms[0].action="groupAction.do?method=assignedPage&pageNo="+pageNo;
  document.forms[0].submit();
}
function assignedPageADD(){
var pageNo =document.getElementById("pageNoADD").value;
  document.forms[0].action="groupAction.do?method=assignedPageADD1&pageNo="+pageNo;
  document.forms[0].submit();
}
<logic:present name="returnMsg">
  var msg = '<bean:write name="returnMsg" />';
  alert(msg);
</logic:present>
</script>

<script language="JavaScript" type="text/JavaScript">
	$(function() {
		$("#selectall").click(function() {
			if ($(this).attr('checked') == 'checked' || $(this).attr('checked') == true) { // 全選
				$(':checkbox[name=delid]').attr('checked',true);
			} else { // 取消全選
				$(':checkbox[name=delid]').attr('checked',false);
			}
		});
		$("#btn_del").click(function(){
			if($(':checkbox[name=delid]:checked').length==0){
				//$.ShowMessage('尚未勾選刪除項目');
				alert('尚未勾選刪除項目');
			}else{
				//$.ShowConfirm('是否確定刪除?');
				$("#method").val('deleteAction');
				$("#form1").submit(); 
			}
		});
		
		
	});
</script>
</head>
<body class="bodyWorkArea" >
<form id="form1" name="form1" method="post" action="wood_DataAction.do">
<input type="hidden" id="method" name="method" value="queryExect">
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
      			 								資料維護功能
     											</td>
     										</tr>
     									</table>
     								</td>	
     							</tr>
 	
        
				<tr>
			             	
      			       		<td class="QueryTable_SubTitle">中文名稱</td>
      			       		<td class="QueryTable_Content">
      			       		<input name="dataname" value="<c:out value="${wood_DataForm.datachinsename}"/>" type="text" size="30" maxlength="70">
      			       		</td>
        			</tr>
        			<tr>
            				<td colspan="3"></td>
            				<td>
                			<input type="button" id="btn_query" name="btn_query" value="查詢" />
                			<input class="form_btn3" type="button" name="Submit" value="新增" onClick="submitAdd('addInit');">
                			<input class="form_btn3" type="button" name="Submit" value="匯入檔案" onClick="submitAdd('uploadCsvInit');">
                  			</td>
        			</tr>
      				</table>
      			</td>
      		</tr>
      <br>
      <!--/table: MainForm--></td>
         </tr>
          <!--table: QueryForm-->
         <logic:present name="Wood_DataActionList" scope="session">
         <tr>
         	<td>
         	<table id="pageTable"   width=100%>
			       <tr class="GridTable_Title" align=center>
			       	   <th class="nosort"><input type="checkbox" id="selectall"  /></th>
			           <TD>中文名稱</TD>
			          
			           <TD>功能</TD>
			        </tr>
			     <c:forEach items="${Wood_DataActionList}" var="result" varStatus="status">
			        <c:if test="${status.count%2==1}"><c:set var="rowClass" value="GridTable_ContentOdd"/></c:if>
   			     	<c:if test="${status.count%2==0}"><c:set var="rowClass" value="GridTable_ContentEven"/></c:if>
			       <tr class="<c:out value="${rowClass}"/>" id="showPage" bordercolor="#FFFFFF" >
			          <td><input type="checkbox" name="delid" value="${result.id}"></td>
			           <TD  align="center">   
			           	<c:out value="${result.datachinsename}"/>
			           </TD>
			          
			           <TD  align="center">
			            <input type="button" value="修改" id="updInit"  onClick="submitupd('<c:out value="${status.index}"/>','updInit');" >
						<input type="button" value="刪除" id="delInit" onClick="submitDel('<c:out value="${status.index}"/>','delInit');">
						<input type="button" value="匯出pdf" id="delInit" onClick="submitupd('<c:out value="${status.index}"/>','createPdf');">
			           </TD>
			       </tr>
			      </c:forEach>
			     
		</table>
		</td>
         </tr>
         
         </logic:present>
         <!--/table: QueryForm-->
<!--/Section:QueryMainForm-->
</table>
<!--/table: Whole-->
<br>

</form>
</body>
</html>
