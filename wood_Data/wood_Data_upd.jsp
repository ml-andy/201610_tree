<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>子選單維護功能-修改</title>
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
  document.getElementById("method").value="updExect";
  document.form1.action="wood_DataAction.do";
  document.form1.submit();
}
function uploadImg(method){
	var url = "wood_DataAction.do?method="+method;
	window.open (url, "newwindow", "height=600, width=800, toolbar =no, menubar=no, scrollbars=yes, resizable=yes, location=no, status=no");	
}
</script>
</head>
<body class="bodyWorkArea" >
<form name="form1" method="post" id="form1" action="wood_DataAction.do">
<input type="hidden" name="method" value="updExect" >
<input type="hidden" name="id" value="<c:out value="${wood_DataForm.id}"/>">
<input type="hidden" name="datapic" value="<c:out value="${wood_DataForm.datapic}"/>">

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
      			 								資料維護功能-修改
     											</td>
     										</tr>
     									</table>
     								</td>	
     							</tr>
     <tr>
			             	<td class="QueryTable_SubTitle">名稱</td>
					<td class="QueryTable_Content"><input type="text" name="dataname" value="${wood_DataForm.dataname}"></td>
        			</tr>
        <tr>
<td class="QueryTable_SubTitle">編號</td>
<td class="QueryTable_Content"><input type="text" name="dataid" value="${wood_DataForm.dataid}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">中文名</td>
<td class="QueryTable_Content"><input type="text" name="datachinsename" value="${wood_DataForm.datachinsename}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">學名</td>
<td class="QueryTable_Content"><input type="text" name="scientificname" value="${wood_DataForm.scientificname}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">科名</td>
<td class="QueryTable_Content"><input type="text" name="family" value="${wood_DataForm.family}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">英文名</td>
<td class="QueryTable_Content"><input type="text" name="englishname" value="${wood_DataForm.englishname}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">1.心邊材</td>
<td class="QueryTable_Content">
<select id="sapwood" name="sapwood">
<option value="明顯 "  <c:if test="${wood_DataForm.sapwood=='明顯 '}">selected</c:if>>明顯 </option>
<option value="不明顯"  <c:if test="${wood_DataForm.sapwood=='不明顯'}">selected</c:if>>不明顯 </option>

</select>

</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">2.心材顏色</td>
<td class="QueryTable_Content">
<select id="color" name="color">
<option value="白 "  <c:if test="${wood_DataForm.color=='白 '}">selected</c:if>>白 </option>
<option value="灰白 "  <c:if test="${wood_DataForm.color=='灰白 '}">selected</c:if>>灰白 </option>
<option value="黃白"  <c:if test="${wood_DataForm.color=='黃白'}">selected</c:if>>黃白</option>
<option value="紅白 "  <c:if test="${wood_DataForm.color=='紅白 '}">selected</c:if>>紅白 </option>
<option value="淡褐 "  <c:if test="${wood_DataForm.color=='淡褐 '}">selected</c:if>>淡褐 </option>
<option value="白褐 "  <c:if test="${wood_DataForm.color=='白褐 '}">selected</c:if>>白褐 </option>
<option value="灰褐 "  <c:if test="${wood_DataForm.color=='灰褐 '}">selected</c:if>>灰褐 </option>
<option value="黃褐 "  <c:if test="${wood_DataForm.color=='黃褐 '}">selected</c:if>>黃褐 </option>
<option value="紅褐 "  <c:if test="${wood_DataForm.color=='紅褐 '}">selected</c:if>>紅褐 </option>
<option value="綠褐 "  <c:if test="${wood_DataForm.color=='綠褐 '}">selected</c:if>>綠褐 </option>
<option value="紫褐 "  <c:if test="${wood_DataForm.color=='紫褐 '}">selected</c:if>>紫褐 </option>
<option value="茶褐 "  <c:if test="${wood_DataForm.color=='茶褐 '}">selected</c:if>>茶褐 </option>
<option value="橘褐 "  <c:if test="${wood_DataForm.color=='橘褐 '}">selected</c:if>>橘褐 </option>
<option value="黑褐 "  <c:if test="${wood_DataForm.color=='黑褐 '}">selected</c:if>>黑褐 </option>
<option value="深褐 "  <c:if test="${wood_DataForm.color=='深褐 '}">selected</c:if>>深褐 </option>
<option value="淡紅 "  <c:if test="${wood_DataForm.color=='淡紅 '}">selected</c:if>>淡紅 </option>
<option value="磚紅 "  <c:if test="${wood_DataForm.color=='磚紅 '}">selected</c:if>>磚紅 </option>
<option value="鮮紅 "  <c:if test="${wood_DataForm.color=='鮮紅 '}">selected</c:if>>鮮紅 </option>
<option value="橘紅 "  <c:if test="${wood_DataForm.color=='橘紅 '}">selected</c:if>>橘紅 </option>
<option value="紫紅 "  <c:if test="${wood_DataForm.color=='紫紅 '}">selected</c:if>>紫紅 </option>
<option value="淡黃 "  <c:if test="${wood_DataForm.color=='淡黃 '}">selected</c:if>>淡黃 </option>
<option value="橘黃 "  <c:if test="${wood_DataForm.color=='橘黃 '}">selected</c:if>>橘黃 </option>
<option value="其他"  <c:if test="${wood_DataForm.color=='其他'}">selected</c:if>>其他</option>

</select>

</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">3.邊材顏色</td>
<td class="QueryTable_Content">
<select id="sapwoodcolor" name="sapwoodcolor">
<option value="白 "  <c:if test="${wood_DataForm.sapwoodcolor=='白'}">selected</c:if>>白 </option>
<option value="灰白 "  <c:if test="${wood_DataForm.sapwoodcolor=='灰白'}">selected</c:if>>灰白 </option>
<option value="黃白 "  <c:if test="${wood_DataForm.sapwoodcolor=='黃白'}">selected</c:if>>黃白 </option>
<option value="紅白 "  <c:if test="${wood_DataForm.sapwoodcolor=='紅白'}">selected</c:if>>紅白 </option>
<option value="淡褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='淡褐'}">selected</c:if>>淡褐 </option>
<option value="白褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='白褐'}">selected</c:if>>白褐 </option>
<option value="灰褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='灰褐'}">selected</c:if>>灰褐 </option>
<option value="黃褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='黃褐'}">selected</c:if>>黃褐 </option>
<option value="紅褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='紅褐'}">selected</c:if>>紅褐 </option>
<option value="綠褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='綠褐'}">selected</c:if>>綠褐 </option>
<option value="紫褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='紫褐'}">selected</c:if>>紫褐 </option>
<option value="茶褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='茶褐'}">selected</c:if>>茶褐 </option>
<option value="橘褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='橘褐'}">selected</c:if>>橘褐 </option>
<option value="黑褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='黑褐'}">selected</c:if>>黑褐 </option>
<option value="深褐 "  <c:if test="${wood_DataForm.sapwoodcolor=='深褐'}">selected</c:if>>深褐 </option>
<option value="淡紅 "  <c:if test="${wood_DataForm.sapwoodcolor=='淡紅'}">selected</c:if>>淡紅 </option>
<option value="磚紅 "  <c:if test="${wood_DataForm.sapwoodcolor=='磚紅'}">selected</c:if>>磚紅 </option>
<option value="鮮紅 "  <c:if test="${wood_DataForm.sapwoodcolor=='鮮紅'}">selected</c:if>>鮮紅 </option>
<option value="橘紅 "  <c:if test="${wood_DataForm.sapwoodcolor=='橘紅'}">selected</c:if>>橘紅 </option>
<option value="紫紅 "  <c:if test="${wood_DataForm.sapwoodcolor=='紫紅'}">selected</c:if>>紫紅 </option>
<option value="淡黃 "  <c:if test="${wood_DataForm.sapwoodcolor=='淡黃'}">selected</c:if>>淡黃 </option>
<option value="橘黃 "  <c:if test="${wood_DataForm.sapwoodcolor=='橘黃'}">selected</c:if>>橘黃 </option>
<option value="其他 "  <c:if test="${wood_DataForm.sapwoodcolor=='其他'}">selected</c:if>>其他 </option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">4.深色條紋</td>
<td class="QueryTable_Content">
<select id="darkstripes" name="darkstripes">
<option value="有"  <c:if test="${wood_DataForm.darkstripes=='有'}">selected</c:if>>有</option>
<option value="無"  <c:if test="${wood_DataForm.darkstripes=='無'}">selected</c:if>>無</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">5.光澤</td>
<td class="QueryTable_Content">
<select id="gloss" name="gloss">
<option value="有"  <c:if test="${wood_DataForm.gloss=='有'}">selected</c:if>>有</option>
<option value="無"  <c:if test="${wood_DataForm.gloss=='無'}">selected</c:if>>無</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">6.木理</td>
<td class="QueryTable_Content">
<select id="woodprocessing" name="woodprocessing">
<option value="通直"  <c:if test="${wood_DataForm.woodprocessing=='通直'}">selected</c:if>>通直</option>
<option value="交錯"  <c:if test="${wood_DataForm.woodprocessing=='交錯'}">selected</c:if>>交錯</option>
<option value="螺旋"  <c:if test="${wood_DataForm.woodprocessing=='螺旋'}">selected</c:if>>螺旋</option>
<option value="斜走"  <c:if test="${wood_DataForm.woodprocessing=='斜走'}">selected</c:if>>斜走</option>
<option value="波狀"  <c:if test="${wood_DataForm.woodprocessing=='波狀'}">selected</c:if>>波狀</option>
<option value="細緻"  <c:if test="${wood_DataForm.woodprocessing=='細緻'}">selected</c:if>>細緻</option>
<option value="捲縮"  <c:if test="${wood_DataForm.woodprocessing=='捲縮'}">selected</c:if>>捲縮</option>
<option value="泡狀"  <c:if test="${wood_DataForm.woodprocessing=='泡狀'}">selected</c:if>>泡狀</option>
<option value="鳥眼"  <c:if test="${wood_DataForm.woodprocessing=='鳥眼'}">selected</c:if>>鳥眼</option>
<option value="虎斑"  <c:if test="${wood_DataForm.woodprocessing=='虎斑'}">selected</c:if>>虎斑</option>
<option value="條紋"  <c:if test="${wood_DataForm.woodprocessing=='條紋'}">selected</c:if>>條紋</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">7.木肌</td>
<td class="QueryTable_Content">
<select id="woodmuscle" name="woodmuscle">
<option value="粗糙"  <c:if test="${wood_DataForm.woodmuscle=='粗糙'}">selected</c:if>>粗糙</option>
<option value="中庸"  <c:if test="${wood_DataForm.woodmuscle=='中庸'}">selected</c:if>>中庸</option>
<option value="細緻"  <c:if test="${wood_DataForm.woodmuscle=='細緻'}">selected</c:if>>細緻</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">8.氣味</td>
<td class="QueryTable_Content">
<select id="smell" name="smell">
<option value="有"  <c:if test="${wood_DataForm.smell=='有'}">selected</c:if>>有</option>
<option value="無"  <c:if test="${wood_DataForm.smell=='無'}">selected</c:if>>無</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">9.觸感</td>
<td class="QueryTable_Content">
<select id="touch" name="touch">
<option value="光滑"  <c:if test="${wood_DataForm.touch=='光滑'}">selected</c:if>>光滑</option>
<option value="油膩"  <c:if test="${wood_DataForm.touch=='油膩'}">selected</c:if>>油膩</option>
<option value="臘質"  <c:if test="${wood_DataForm.touch=='臘質'}">selected</c:if>>臘質</option>
<option value="其他"  <c:if test="${wood_DataForm.touch=='其他'}">selected</c:if>>其他</option>

</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">10.生長輪</td>
<td class="QueryTable_Content">
<select id="roundgrowth" name="roundgrowth">
<option value="明顯"  <c:if test="${wood_DataForm.roundgrowth=='明顯'}">selected</c:if>>明顯</option>
<option value="不明顯"  <c:if test="${wood_DataForm.roundgrowth=='不明顯'}">selected</c:if>>不明顯</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">11.早晚材移行</td>
<td class="QueryTable_Content">
<input type="text" name="transitionalmaterial" value="${wood_DataForm.transitionalmaterial}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">12.導管排列分布</td>
<td class="QueryTable_Content">
<select id="arrangement" name="arrangement">
<option value="無孔材"  <c:if test="${wood_DataForm.arrangement=='無孔材'}">selected</c:if>>無孔材</option>
<option value="環孔材"  <c:if test="${wood_DataForm.arrangement=='環孔材'}">selected</c:if>>環孔材</option>
<option value="半環孔材"  <c:if test="${wood_DataForm.arrangement=='半環孔材'}">selected</c:if>>半環孔材</option>
<option value="散孔材"  <c:if test="${wood_DataForm.arrangement=='散孔材'}">selected</c:if>>散孔材</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">13.導管著生聚結</td>
<td class="QueryTable_Content">
<select id="coalescence" name="coalescence">
<option value="單獨管孔"  <c:if test="${wood_DataForm.coalescence=='單獨管孔'}">selected</c:if>>單獨管孔</option>
<option value="複管孔"  <c:if test="${wood_DataForm.coalescence=='複管孔'}">selected</c:if>>複管孔</option>
<option value="鏈狀管孔徑向排列"  <c:if test="${wood_DataForm.coalescence=='鏈狀管孔徑向排列'}">selected</c:if>>鏈狀管孔徑向排列</option>
<option value="鏈狀管孔弦向排列"  <c:if test="${wood_DataForm.coalescence=='鏈狀管孔弦向排列'}">selected</c:if>>鏈狀管孔弦向排列</option>
<option value="團狀管孔"  <c:if test="${wood_DataForm.coalescence=='團狀管孔'}">selected</c:if>>團狀管孔</option>
<option value="管孔榆氏排列"  <c:if test="${wood_DataForm.coalescence=='管孔榆氏排列'}">selected</c:if>>管孔榆氏排列</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">14.導管腔填充體</td>
<td class="QueryTable_Content">
<select id="cavityfilling" name="cavityfilling">
<option value="有"  <c:if test="${wood_DataForm.cavityfilling=='有'}">selected</c:if>>有</option>
<option value="無"  <c:if test="${wood_DataForm.cavityfilling=='無'}">selected</c:if>>無</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">15.導管腔沉積物</td>
<td class="QueryTable_Content">
<select id="lumendeposits" name="lumendeposits">
<option value="有沉積物(黃)"  <c:if test="${wood_DataForm.lumendeposits=='有沉積物(黃)'}">selected</c:if>>有沉積物(黃)</option>
<option value="有沉積物(白)"  <c:if test="${wood_DataForm.lumendeposits=='有沉積物(白)'}">selected</c:if>>有沉積物(白)</option>
<option value="有沉積物(深褐)"  <c:if test="${wood_DataForm.lumendeposits=='有沉積物(深褐)'}">selected</c:if>>有沉積物(深褐)</option>
<option value="有沉積物(其他)"  <c:if test="${wood_DataForm.lumendeposits=='有沉積物(其他)'}">selected</c:if>>有沉積物(其他)</option>
<option value="無沉積物"  <c:if test="${wood_DataForm.lumendeposits=='無沉積物'}">selected</c:if>>無沉積物</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">16.垂直樹脂溝</td>
<td class="QueryTable_Content">
<select id="groovesresin" name="groovesresin">
<option value="有"  <c:if test="${wood_DataForm.groovesresin=='有'}">selected</c:if>>有</option>
<option value="無"  <c:if test="${wood_DataForm.groovesresin=='無'}">selected</c:if>>無</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">17.水平樹脂溝</td>
<td class="QueryTable_Content">
<select id="levelresinditch" name="levelresinditch">
<option value="有"  <c:if test="${wood_DataForm.levelresinditch=='有'}">selected</c:if>>有</option>
<option value="無"  <c:if test="${wood_DataForm.levelresinditch=='無'}">selected</c:if>>無</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">18.縱向薄壁細胞排列</td>
<td class="QueryTable_Content">
<select id="parenchymacells" name="parenchymacells">
<option value="離孔薄壁細胞(散生)"  <c:if test="${wood_DataForm.parenchymacells=='離孔薄壁細胞(散生)'}">selected</c:if>>離孔薄壁細胞(散生)</option>
<option value="離孔薄壁細胞(輪緣狀)"  <c:if test="${wood_DataForm.parenchymacells=='離孔薄壁細胞(輪緣狀)'}">selected</c:if>>離孔薄壁細胞(輪緣狀)</option>
<option value="離孔薄壁細胞(細切線狀)"  <c:if test="${wood_DataForm.parenchymacells=='離孔薄壁細胞(細切線狀)'}">selected</c:if>>離孔薄壁細胞(細切線狀)</option>
<option value="離孔薄壁細胞(帶狀切線)"  <c:if test="${wood_DataForm.parenchymacells=='離孔薄壁細胞(帶狀切線)'}">selected</c:if>>離孔薄壁細胞(帶狀切線)</option>
<option value="連孔薄壁細胞(圍孔)"  <c:if test="${wood_DataForm.parenchymacells=='連孔薄壁細胞(圍孔)'}">selected</c:if>>連孔薄壁細胞(圍孔)</option>
<option value="連孔薄壁細胞(翼狀)"  <c:if test="${wood_DataForm.parenchymacells=='連孔薄壁細胞(翼狀)'}">selected</c:if>>連孔薄壁細胞(翼狀)</option>
<option value="連孔薄壁細胞(聚合翼狀)"  <c:if test="${wood_DataForm.parenchymacells=='連孔薄壁細胞(聚合翼狀)'}">selected</c:if>>連孔薄壁細胞(聚合翼狀)</option>
<option value="連孔薄壁細胞(鳳眼狀)"  <c:if test="${wood_DataForm.parenchymacells=='連孔薄壁細胞(鳳眼狀)'}">selected</c:if>>連孔薄壁細胞(鳳眼狀)</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">19.導管密度</td>
<td class="QueryTable_Content"><input type="text" name="vesseldensity" value="${wood_DataForm.vesseldensity}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">20.導管徑向徑</td>
<td class="QueryTable_Content"><input type="text" name="ductdiameter" value="${wood_DataForm.ductdiameter}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">21.導管弦向徑</td>
<td class="QueryTable_Content"><input type="text" name="orchestraltrail" value="${wood_DataForm.orchestraltrail}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">22.樹脂溝</td>
<td class="QueryTable_Content"><input type="text" name="resinditch" value="${wood_DataForm.resinditch}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">23.垂直樹脂溝於橫切面上之排列</td>
<td class="QueryTable_Content"><input type="text" name="verticalarrangement" value="${wood_DataForm.verticalarrangement}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">24.樹脂細胞(縱向薄壁細胞)</td>
<td class="QueryTable_Content"><input type="text" name="resincell" value="${wood_DataForm.resincell}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">25.管胞壁螺旋加厚</td>
<td class="QueryTable_Content"><input type="text" name="wallthickening" value="${wood_DataForm.wallthickening}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">26.交叉區壁孔</td>
<td class="QueryTable_Content"><input type="text" name="wallhole" value="${wood_DataForm.wallhole}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">27.木質線高度</td>
<td class="QueryTable_Content">
<select id="woodenheight" name="woodenheight">
<option value="1~10個細胞高"  <c:if test="${wood_DataForm.woodenheight=='1~10個細胞高'}">selected</c:if>>1~10個細胞高</option>
<option value="11~20個細胞高"  <c:if test="${wood_DataForm.woodenheight=='11~20個細胞高'}">selected</c:if>>11~20個細胞高</option>
<option value="21個以上細胞高"  <c:if test="${wood_DataForm.woodenheight=='21個以上細胞高'}">selected</c:if>>21個以上細胞高</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">28.木質線粗細</td>
<td class="QueryTable_Content">
<select id="woodenthickness" name="woodenthickness">	
<option value="粗" <c:if test="${wood_DataForm.woodenthickness=='粗'}">selected</c:if>>粗 </option>
<option value="細" <c:if test="${wood_DataForm.woodenthickness=='細 '}">selected</c:if>>細 </option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">29.木質線</td>
<td class="QueryTable_Content">
<select id="woodline" name="woodline">
<option value="單列"  <c:if test="${wood_DataForm.woodline=='單列'}">selected</c:if>>單列</option>
<option value="2-3列"  <c:if test="${wood_DataForm.woodline=='2-3列'}">selected</c:if>>2-3列</option>
<option value="多列"  <c:if test="${wood_DataForm.woodline=='多列'}">selected</c:if>>多列</option>
<option value="聚合木質線"  <c:if test="${wood_DataForm.woodline=='聚合木質線'}">selected</c:if>>聚合木質線</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">30.木質線細胞種類</td>
<td class="QueryTable_Content">
<select id="woodspecies" name="woodspecies">
<option value="橫臥細胞"  <c:if test="${wood_DataForm.woodspecies=='橫臥細胞'}">selected</c:if>>橫臥細胞</option>
<option value="方形細胞"  <c:if test="${wood_DataForm.woodspecies=='方形細胞'}">selected</c:if>>方形細胞</option>
<option value="直立細胞"  <c:if test="${wood_DataForm.woodspecies=='直立細胞'}">selected</c:if>>直立細胞</option>
</select>
</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">31.漣紋</td>
<td class="QueryTable_Content">
<select id="ripplepattern" name="ripplepattern">
<option value="有"  <c:if test="${wood_DataForm.ripplepattern=='有'}">selected</c:if>>有</option>
<option value="無"  <c:if test="${wood_DataForm.ripplepattern=='無'}">selected</c:if>>無</option>
</select>

</td>
</tr>
<tr>
<td class="QueryTable_SubTitle">32.木質線細胞內結晶</td>
<td class="QueryTable_Content"><input type="text" name="crystallinecells" value="${wood_DataForm.crystallinecells}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">33.木質線密度</td>
<td class="QueryTable_Content"><input type="text" name="woodendensity" value="${wood_DataForm.woodendensity}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">34.生材比重</td>
<td class="QueryTable_Content"><input type="text" name="rawmaterial" value="${wood_DataForm.rawmaterial}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">35.氣乾比重</td>
<td class="QueryTable_Content"><input type="text" name="dryair" value="${wood_DataForm.dryair}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">36.徑向收縮率(％)</td>
<td class="QueryTable_Content"><input type="text" name="radialshrinkage" value="${wood_DataForm.radialshrinkage}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">37.弦向收縮率(％)</td>
<td class="QueryTable_Content"><input type="text" name="tangentialshrinkage" value="${wood_DataForm.tangentialshrinkage}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">38.靜曲破壞係數</td>
<td class="QueryTable_Content"><input type="text" name="damagecoefficient" value="${wood_DataForm.damagecoefficient}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">39.靜曲彈性係數</td>
<td class="QueryTable_Content"><input type="text" name="bendingelasticity" value="${wood_DataForm.bendingelasticity}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">40.衝擊強度</td>
<td class="QueryTable_Content"><input type="text" name="impactstrength" value="${wood_DataForm.impactstrength}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">41.縱向壓縮強度</td>
<td class="QueryTable_Content"><input type="text" name="compressionstrength" value="${wood_DataForm.compressionstrength}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">42.剪斷強度</td>
<td class="QueryTable_Content"><input type="text" name="shearstrength" value="${wood_DataForm.shearstrength}"></td>
</tr>
<tr>
<td class="QueryTable_SubTitle">43.用途</td>
<td class="QueryTable_Content"><input type="text" name="uses" value="${wood_DataForm.uses}"></td>
</tr>
        			
        			
        			
        			  <tr>
			             	<td class="QueryTable_SubTitle">上傳照片</td>
					<td class="QueryTable_Content">
					<input class="form_btn3" type="button" name="Submit" value="上傳圖片" onClick="uploadImg('uploadInit');">
					<img src="wood_DataAction.do?method=showTempImage&tempkey=${wood_DataForm.datapic}" />
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
                  <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form_btn3" type="button" name="Submit" value="回上一頁" onClick="history.go(-1);"></td>
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
