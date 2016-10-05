<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>





<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>圖片上傳資料</title>
<link href="css.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/common1.js"></script>
<script language="javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.blockUI.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.tools/jquery.tools.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery.tools/scrollable-vertical.css" />
<script>
$(document).ready(function() {
	$("#btn_startup_img").toggle(function(){
		$(".startup_img2").show();
	},function(){
		$(".startup_img2").show();
	});

	$('#ajaxUploadFile').live('change',function(){
		  var element = $(this);
		  var eid = $(this).attr('id');
		  var s = $("#image_filesize").text();
	 	  	  
		  var myurl = '${pageContext.request.contextPath}/wood_DataAction.do?method=ajaxUploadSession&nodename='+eid;
		  
	 	  $.ajaxFileUpload ({
	 		url:myurl,
	 		secureuri:false,
	 		data:{'filesize':s},
	 		fileElementId:eid,
	 		dataType: 'json',
	 		success:function (data) {
	 			if(data!=null){
	 				if(data.success=="0" && data.list.length>0){
	 					var toUseMessage = "圖片不符合規格<br/>";
	 					$.each(data.list,function(i,item){
	 						toUseMessage = toUseMessage + item.message + "<br/>";
	 					});
	 					$("#"+eid).val("");
	 					$("#message_content").html(toUseMessage);
						$.blockUI({message: $('#messagebox')});
	 				}else{
	 					var tempkey = data.tempkey;
	 					$("#"+eid).val("");
	 					var imgsrc = '${pageContext.request.contextPath}/wood_DataAction.do?method=showTempImage&tempkey='+tempkey;
						$(".items").prepend(
							"<div class='item' tempkey='"+tempkey+"'>" +
						    "<img src='" + imgsrc + "' />" +
						    "</p>"+			 
						    "</div>"
						);
		 			}
	 			}else{
						$("#message_content").html("取得遠端資料失敗，請稍後再試");
	 					$.blockUI({message: $('#messagebox')});				
	 			}
	 		}
	 	  });
	});
	
});
</script>
</head>
<body class="bodyWorkArea">
<form method="post" enctype="multipart/form-data">
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
      			 								圖片上傳資料
     											</td>
     										</tr>
     									</table>
     								</td>	
     							</tr>
     							
					<tr>
			        	<td class="QueryTable_Content">
			        	<input type="file" id="ajaxUploadFile" name="ajaxUploadFile">
			        	<input type="button" id="btn_startup_img" name="btn_translate" value="圖片上傳"></td> 
        			</tr>
        			</table>
      			</td>
      		</tr>
      <br>
      <!--/table: MainForm--></td>
        
         
         <!--/table: QueryForm-->
<!--/Section:QueryMainForm-->
</table>


<div class="startup_img2" style="display:none;">
	<!-- HTML structures -->
	<div id="imageupload2">
		<p style="color: gray;font-size: 12px">
		
		
	</div>
	<!-- root element for scrollable -->
	<div class="scrollable vertical">
		<!-- root element for the items -->
		<div class="items"></div>
	</div>
</div>


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

<!--/table: Whole-->
<br>
</body>
</html>
