<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Ʒ����ѡ��ͷ�����ȷ��</title>
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
	font-family: ����;
	font-weight: bold;
}
.STYLE1 {font-family: "����"}
.STYLE2 {
	font-family: "����";
	font-weight: bold;
	font-size: large;
}
-->
</style></head>
<body>
<form name="form1" method="post" action="jisuan.jsp">
<div align="center">
<p class="STYLE2">��Ʒ����ѡ��ͷ�����ȷ��</p>
</div>
<table width="357" height="29" align="center">
  <tr>
    <td width="43"><span class="STYLE1">��ƷA</span></td>
    <td width="111"><select name="A"onchange=" selectnumber()">
	<option value="100" selected="selected">100</option>
	<option value="200" selected="selected">200</option>
	<option value="300" selected="selected">300</option>
	<option value="400" selected="selected">400</option>
	<option value="0" selected="selected">-��ѡ������-</option>
	</select></td>
    <td width="51"><span class="STYLE1">��ƷB</span></td>
    <td width="132">
      <select name="B"onchange=" selectnumber()">
        <option value="100" selected="selected">100</option>
        <option value="200" selected="selected">200</option>
        <option value="300" selected="selected">300</option>
		<option value="400" selected="selected">400</option>
        <option value="0" selected="selected">-��ѡ������-</option>
    </select></td>
    </tr>
  </tr>
  </table>
  <table align="center" width="355" border="1">
  <tr>
    <td width="75">���Ϸѽ��</td>
    <td width="177"><input type="text" name="txt1" id="1" /></td>
    <td width="81">Ԫ</td>
  </tr>
  <tr>
    <td>ȼ�Ϸѽ��</td>
    <td><input type="text" name="txt2" id="2" /></td>
    <td>Ԫ</td>
  </tr>
</table>
<div align="center">
  <p>
    <input type="button"name="but1" value="����" onclick="check()"/>
    </p>
  </div>
  <p>&nbsp;</p>
</form>
</body>
</html>
