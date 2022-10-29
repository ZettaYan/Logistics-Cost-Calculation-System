<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>产品产量选择和分配金额确认</title>
<script language="javascript">
function check(){
document.form1.action="jisuan.jsp";
	document.form1.submit();
	}
	</script>
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
h1,h2,h3,h4,h5,h6 {
	font-family: 宋体;
	font-weight: bold;
}
.STYLE1 {font-family: "宋体"}
.STYLE2 {
	font-family: "宋体";
	font-weight: bold;
	font-size: large;
}
-->
</style></head>
<body>
<form name="form1" method="post" action="jisuan.jsp">
<div align="center">
<p class="STYLE2">产品产量选择和分配金额确认</p>
</div>
<table width="357" height="29" align="center">
  <tr>
    <td width="43"><span class="STYLE1">产品A</span></td>
    <td width="111"><select name="A"onchange=" selectnumber()">
	<option value="100" selected="selected">100</option>
	<option value="200" selected="selected">200</option>
	<option value="300" selected="selected">300</option>
	<option value="400" selected="selected">400</option>
	<option value="0" selected="selected">-请选择数量-</option>
	</select></td>
    <td width="51"><span class="STYLE1">产品B</span></td>
    <td width="132">
      <select name="B"onchange=" selectnumber()">
        <option value="100" selected="selected">100</option>
        <option value="200" selected="selected">200</option>
        <option value="300" selected="selected">300</option>
		<option value="400" selected="selected">400</option>
        <option value="0" selected="selected">-请选择数量-</option>
    </select></td>
    </tr>
  </tr>
  </table>
  <table align="center" width="355" border="1">
  <tr>
    <td width="75">材料费金额</td>
    <td width="177"><input type="text" name="txt1" id="1" /></td>
    <td width="81">元</td>
  </tr>
  <tr>
    <td>燃料费金额</td>
    <td><input type="text" name="txt2" id="2" /></td>
    <td>元</td>
  </tr>
</table>
<div align="center">
  <p>
    <input type="button"name="but1" value="计算" onclick="check()"/>
    </p>
  </div>
  <p>&nbsp;</p>
</form>
</body>
</html>
