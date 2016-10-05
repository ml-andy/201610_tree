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
<script language="javascript" src="js/common1.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script language="JavaScript" type="text/JavaScript">
$(document).ready(function() {
	
	$("#btn_query").click(function() {
		$("#form1").submit();
	});
});
function uploadImg(method){
	var url = "wood_DataAction.do?method="+method;
	window.open (url, "newwindow", "height=600, width=800, toolbar =no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no");	
}
function uploadImg_en(){
	var url = "comm/uploadImg.jsp";
	window.open (url, "newwindow", "height=600, width=800, toolbar =no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no");	
}
function sendCkedit(tcobjname){
	var url = "wood_Data/wood_Data_ckedit.jsp?tcobjname="+tcobjname;
	window.open (url, "newwindow", "height=600, width=800, toolbar =no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no");	
}
function sendContent(data){
	$("#productcontent").html(data);
}
</script>


</head>
<body class="bodyWorkArea">
<form id="form1" name="form1" method="post" action="wood_DataAction.do">
<input type="hidden" name="method" value="addExect">
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
                      			<img border="0" src="images/icon_01.gif" width="30" height="28">       			
                  				</td>
			   									<td class="QueryTable_Title" width="85%">           
      			 								新增資料
     											</td>
     										</tr>
     									</table>
     								</td>	
     							</tr>
     				<tr>
			             	<td class="QueryTable_SubTitle">名稱</td>
					<td class="QueryTable_Content"><input type="text" name="dataname" value=""></td>
        			</tr>
        			<tr>
	<td class="QueryTable_SubTitle">編號</td>
	<td class="QueryTable_Content"><input type="text" name="dataid" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">中文名</td>
	<td class="QueryTable_Content"><input type="text" name="datachinsename" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">學名</td>
	<td class="QueryTable_Content"><input type="text" name="scientificname" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">科名</td>
	<td class="QueryTable_Content"><input type="text" name="family" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">英文名</td>
	<td class="QueryTable_Content"><input type="text" name="englishname" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">1.心邊材</td>
	<td class="QueryTable_Content">
	<select id="sapwood" name="sapwood">
		<option value="明顯" >明顯 </option>
		<option value="不明顯" >不明顯 </option>
		
</select>
	
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">2.心材顏色</td>
	<td class="QueryTable_Content">
	<select id="color" name="color">
	<option value="白 " >白  </option>
<option value="灰白 " >灰白  </option>
<option value="黃白" >黃白 </option>
<option value="紅白 " >紅白  </option>
<option value="淡褐 " >淡褐  </option>
<option value="白褐 " >白褐  </option>
<option value="灰褐 " >灰褐  </option>
<option value="黃褐 " >黃褐  </option>
<option value="紅褐 " >紅褐  </option>
<option value="綠褐 " >綠褐  </option>
<option value="紫褐 " >紫褐  </option>
<option value="茶褐 " >茶褐  </option>
<option value="橘褐 " >橘褐  </option>
<option value="黑褐 " >黑褐  </option>
<option value="深褐 " >深褐  </option>
<option value="淡紅 " >淡紅  </option>
<option value="磚紅 " >磚紅  </option>
<option value="鮮紅 " >鮮紅  </option>
<option value="橘紅 " >橘紅  </option>
<option value="紫紅 " >紫紅  </option>
<option value="淡黃 " >淡黃  </option>
<option value="橘黃 " >橘黃  </option>
<option value="其他" >其他 </option>
	</select>
	
</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">3.邊材顏色</td>
	<td class="QueryTable_Content">
	<select id="sapwoodcolor" name="sapwoodcolor">
	<option value="白 " >白  </option>
<option value="灰白 " >灰白  </option>
<option value="黃白" >黃白 </option>
<option value="紅白 " >紅白  </option>
<option value="淡褐 " >淡褐  </option>
<option value="白褐 " >白褐  </option>
<option value="灰褐 " >灰褐  </option>
<option value="黃褐 " >黃褐  </option>
<option value="紅褐 " >紅褐  </option>
<option value="綠褐 " >綠褐  </option>
<option value="紫褐 " >紫褐  </option>
<option value="茶褐 " >茶褐  </option>
<option value="橘褐 " >橘褐  </option>
<option value="黑褐 " >黑褐  </option>
<option value="深褐 " >深褐  </option>
<option value="淡紅 " >淡紅  </option>
<option value="磚紅 " >磚紅  </option>
<option value="鮮紅 " >鮮紅  </option>
<option value="橘紅 " >橘紅  </option>
<option value="紫紅 " >紫紅  </option>
<option value="淡黃 " >淡黃  </option>
<option value="橘黃 " >橘黃  </option>
<option value="其他" >其他 </option>
	</select>
	
	
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">4.深色條紋</td>
	<td class="QueryTable_Content">
	<select id="darkstripes" name="darkstripes">
	<option value="有" >有  </option>
	<option value="無" >無</option>
		</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">5.光澤</td>
	<td class="QueryTable_Content">
	<select id="gloss" name="gloss">
	<option value="有" >有  </option>
	<option value="無" >無</option>
		</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">6.木理</td>
	<td class="QueryTable_Content">
	<select id="woodprocessing" name="woodprocessing">
	<option value="通直 " >通直  </option>
<option value="交錯 " >交錯  </option>
<option value="螺旋 " >螺旋  </option>
<option value="斜走 " >斜走  </option>
<option value="波狀 " >波狀  </option>
<option value="細緻 " >細緻  </option>
<option value="捲縮 " >捲縮  </option>
<option value="泡狀 " >泡狀  </option>
<option value="鳥眼 " >鳥眼  </option>
<option value="虎斑 " >虎斑  </option>
<option value="條紋" >條紋 </option>
	</select>
	
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">7.木肌</td>
	<td class="QueryTable_Content">
	<select id="woodmuscle" name="woodmuscle">
	<option value="粗糙 " >粗糙  </option>
<option value="中庸 " >中庸  </option>
<option value="細緻" >細緻 </option>
	</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">8.氣味</td>
	<td class="QueryTable_Content">
		<select id="smell" name="smell">
	<option value="有" >有  </option>
	<option value="無" >無</option>
		</select>
	
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">9.觸感</td>
	<td class="QueryTable_Content">
	<select id="touch" name="touch">
	<option value="光滑 " >光滑  </option>
<option value="油膩 " >油膩  </option>
<option value="臘質 " >臘質  </option>
<option value="其他" >其他 </option>
</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">10.生長輪</td>
	<td class="QueryTable_Content">
	<select id="roundgrowth" name="roundgrowth">
		<option value="明顯" >明顯 </option>
		<option value="不明顯" >不明顯 </option>
		
</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">11.早晚材移行</td>
	<td class="QueryTable_Content"><input type="text" name="transitionalmaterial" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">12.導管排列分布</td>
	<td class="QueryTable_Content">
	<select id="arrangement" name="arrangement">
	<option value="無孔材 " >無孔材  </option>
<option value="環孔材 " >環孔材  </option>
<option value="半環孔材 " >半環孔材  </option>
<option value="散孔材" >散孔材 </option>
</select>	
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">13.導管著生聚結</td>
	<td class="QueryTable_Content">
<select id="coalescence" name="coalescence">
<option value="單獨管孔">單獨管孔</option>
<option value="複管孔" >複管孔</option>
<option value="鏈狀管孔徑向排列" >鏈狀管孔徑向排列</option>
<option value="鏈狀管孔弦向排列" >鏈狀管孔弦向排列</option>
<option value="團狀管孔"  >團狀管孔</option>
<option value="管孔榆氏排列" >管孔榆氏排列</option>
</select>	
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">14.導管腔填充體</td>
	<td class="QueryTable_Content">
	<select id="cavityfilling" name="cavityfilling">
	<option value="有" >有  </option>
	<option value="無" >無</option>
		</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">15.導管腔沉積物</td>
	<td class="QueryTable_Content">
	<select id="lumendeposits" name="lumendeposits">
	<option value="有沉積物(黃) " >有沉積物(黃)  </option>
<option value="有沉積物(白) " >有沉積物(白)  </option>
<option value="有沉積物(深褐) " >有沉積物(深褐)  </option>
<option value="有沉積物(其他) " >有沉積物(其他)  </option>
<option value="無沉積物" >無沉積物 </option>
	</select>
	
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">16.垂直樹脂溝</td>
	<td class="QueryTable_Content">
	
	<select id="groovesresin" name="groovesresin">
	<option value="有" >有  </option>
	<option value="無" >無</option>
		</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">17.水平樹脂溝</td>
	<td class="QueryTable_Content">
	
	<select id="levelresinditch" name="levelresinditch">
	<option value="有" >有  </option>
	<option value="無" >無</option>
		</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">18.縱向薄壁細胞排列</td>
	<td class="QueryTable_Content">
	<select id="parenchymacells" name="parenchymacells">
	<option value="離孔薄壁細胞(散生)" >離孔薄壁細胞(散生) </option>
<option value="離孔薄壁細胞(輪緣狀)" >離孔薄壁細胞(輪緣狀) </option>
<option value="離孔薄壁細胞(細切線狀)" >離孔薄壁細胞(細切線狀) </option>
<option value="離孔薄壁細胞(帶狀切線)" >離孔薄壁細胞(帶狀切線) </option>
<option value="連孔薄壁細胞(圍孔)" >連孔薄壁細胞(圍孔) </option>
<option value="連孔薄壁細胞(翼狀)" >連孔薄壁細胞(翼狀) </option>
<option value="連孔薄壁細胞(聚合翼狀)" >連孔薄壁細胞(聚合翼狀) </option>
<option value="連孔薄壁細胞(鳳眼狀)" >連孔薄壁細胞(鳳眼狀) </option>
	</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">19.導管密度</td>
	<td class="QueryTable_Content"><input type="text" name="vesseldensity" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">20.導管徑向徑</td>
	<td class="QueryTable_Content"><input type="text" name="ductdiameter" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">21.導管弦向徑</td>
	<td class="QueryTable_Content"><input type="text" name="orchestraltrail" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">22.樹脂溝</td>
	<td class="QueryTable_Content"><input type="text" name="resinditch" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">23.垂直樹脂溝於橫切面上之排列</td>
	<td class="QueryTable_Content"><input type="text" name="verticalarrangement" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">24.樹脂細胞(縱向薄壁細胞)</td>
	<td class="QueryTable_Content"><input type="text" name="resincell" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">25.管胞壁螺旋加厚</td>
	<td class="QueryTable_Content"><input type="text" name="wallthickening" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">26.交叉區壁孔</td>
	<td class="QueryTable_Content"><input type="text" name="wallhole" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">27.木質線高度</td>
	<td class="QueryTable_Content"><input type="text" name="woodenheight" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">28.木質線粗細</td>
	<td class="QueryTable_Content">
<select id="woodenthickness" name="woodenthickness">	
<option value="粗" >粗 </option>
<option value="細" >細 </option>
</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">29.木質線</td>
	<td class="QueryTable_Content">
	<select id="woodline" name="woodline">
	<option value="單列" >單列 </option>
<option value="2-3列" >2-3列 </option>
<option value="多列" >多列 </option>
<option value="聚合木質線" >聚合木質線 </option>
</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">30.木質線細胞種類</td>
	<td class="QueryTable_Content">
	<select id="woodspecies" name="woodspecies">
	<option value="橫臥細胞 " >橫臥細胞  </option>
<option value="方形細胞 " >方形細胞  </option>
<option value="直立細胞" >直立細胞 </option>
</select>
	</td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">31.漣紋</td>
	<td class="QueryTable_Content"><input type="text" name="ripplepattern" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">32.木質線細胞內結晶</td>
	<td class="QueryTable_Content"><input type="text" name="crystallinecells" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">33.木質線密度</td>
	<td class="QueryTable_Content"><input type="text" name="woodendensity" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">34.生材比重</td>
	<td class="QueryTable_Content"><input type="text" name="rawmaterial" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">35.氣乾比重</td>
	<td class="QueryTable_Content"><input type="text" name="dryair" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">36.徑向收縮率(％)</td>
	<td class="QueryTable_Content"><input type="text" name="radialshrinkage" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">37.弦向收縮率(％)</td>
	<td class="QueryTable_Content"><input type="text" name="tangentialshrinkage" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">38.靜曲破壞係數</td>
	<td class="QueryTable_Content"><input type="text" name="damagecoefficient" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">39.靜曲彈性係數</td>
	<td class="QueryTable_Content"><input type="text" name="bendingelasticity" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">40.衝擊強度</td>
	<td class="QueryTable_Content"><input type="text" name="impactstrength" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">41.縱向壓縮強度</td>
	<td class="QueryTable_Content"><input type="text" name="compressionstrength" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">42.剪斷強度</td>
	<td class="QueryTable_Content"><input type="text" name="shearstrength" value=""></td>
</tr>
<tr>
	<td class="QueryTable_SubTitle">43.用途</td>
	<td class="QueryTable_Content"><input type="text" name="uses" value=""></td>
</tr>
        			
        			<tr>
            				<td>
                			<input type="button" id="btn_query" name="btn_query" value="確認" />
                			<input class="form_btn3" type="button" name="Submit" value="檔案上傳" onClick="uploadImg('uploadInit');">
                			<input class="form_btn3" type="button" name="Submit" value="檔案cut上傳" onClick="uploadImg_en();">
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
