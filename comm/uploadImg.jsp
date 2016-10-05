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

function showPreview(coords){
	$("#x").val(coords.x);
	$("#y").val(coords.y);
	$("#x2").val(coords.x2);
	$("#y2").val(coords.y2);
	$("#w").val(coords.w);
	$("#h").val(coords.h);
}
$(document).ready(function() {
	window.moveTo(0,0);
	window.resizeTo(screen.width,screen.height);
	$("#crop_submitok").click(function(){
		if(parseInt($("#x").val())){
            var mcofMsg = "確定此次切割照片寬:"+$("#w").val()+",高:"+$("#h").val();
		
			if(confirm(mcofMsg))
			{
				$("#crop_form").submit();
			}
			else
			{
				   
			}
		}else{
			$("#crop_form").submit();
		}
		});
	 $('.ajaxUploadSession').live('change',function(){
		  var element = $(this);
		  var eid = $(this).attr('id');
		  var s = $("#image_filesize").text();
	 	  $("#"+eid).ajaxStart(function(){
	 		  $('#img_query_status').remove();
	 		  $("#"+eid).after($('<img>',{id:"img_query_status",src:"${pageContext.request.contextPath}/images/busy.gif",style:"vertical-align:middle;"}));
	 	  }); 		  
		  //var myurl = '${pageContext.request.contextPath}/view?action=ajaxUploadTempImage&nodename='+eid;
		  var myurl = '${pageContext.request.contextPath}/wood_DataAction.do?method=ajaxUploadSession&nodename='+eid;
		  alert('myurl='+myurl);
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
	 					$('#img_query_status').remove();
						$("#"+eid).after($('<img>',{id:"img_query_status",src:"${pageContext.request.contextPath}/images/not-accept-icon.png",style:"vertical-align:middle;"}));	 					
	 					$("#message_content").html(toUseMessage);
						$.blockUI({message: $('#messagebox')});
	 				}else{
	 					var tempkey = data.tempkey;
	 					$("#"+eid).val("");
	 					$('#img_query_status').remove();
						$("#"+eid).after($('<img>',{id:"img_query_status",src:"${pageContext.request.contextPath}/images/accept-icon.png",style:"vertical-align:middle;"}));
						var imgsrc = '${pageContext.request.contextPath}/wood_DataAction.do?method=showSessionImage&sessionKEY='+eid;
						$(".imgok").show();
						$(".startup_img").hide();
						$("#my_image").attr("src",imgsrc);
						$("#crop_preview").attr("src",imgsrc);

						$("#my_image").Jcrop({
							onChange:showPreview,
							onSelect:showPreview
						});	
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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HTML編輯器</title>

</head>
<body>
	

<div class="startup_img" >
	<!-- HTML structures -->
	<div id="imageupload">
		
		上傳圖片：<input name="File_MagerActionKey" type="file" id="File_MagerActionKey" class="ajaxUploadSession">
	</div>
</div>
	<div id="imgok" class="imgok" style="display:none;">
	
       <table width="100%"> 
        
       	<tr>
       		<td  valign="top">
       		  <img id="my_image" class="my_image" src="xx.jpg" /> 
       			<P><input type="button" value="確認" id="crop_submitok"  width="100px" height="100px"/></P>
       	    </td>
       	</tr>        
       	
       </table> 	
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
   	    	<input type="button" id="btn_close" value="關閉" onClick="$.unblockUI();"/>
       		</td>
       	</tr>
       </table> 	
</div>	
<form action="${pageContext.request.contextPath}/wood_DataAction.do" method="post" id="crop_form">
<input type="hidden" id="x" name="x" />
<input type="hidden" id="y" name="y" />
<input type="hidden" id="x2" name="x2" />
<input type="hidden" id="y2" name="y2" />
<input type="hidden" id="w" name="w" />
<input type="hidden" id="h" name="h" />
<input type="hidden"  id="method" name="method" value="cropImgView"/>
<input type="hidden"  name="nodename" value="File_MagerActionKey"/>
<input type="hidden"  name="languages" value="tw"/>
</form>
	
</body>
</html>
