<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<script language="javascript">
function listData(){
document.form1.action="hua.jsp";
	document.form1.submit();
	}
	</script>
</head>
<body>
 <form name="form1" method="post" action="hua.jsp">
  <% String cost1=request.getParameter("txt1");//传输四个数据到本表C1,C2分别为材料、燃料总成本，NA,NB分别为A、B数量
  String cost2=request.getParameter("txt2");
  int c1= Integer.parseInt(cost1);
  double C1=(double) c1;//强制类型转换
  int c2= Integer.parseInt(cost2);
  double C2=(double) c2;
  String N1=request.getParameter("A");
  String N2=request.getParameter("B");
  int NA= Integer.parseInt(N1);
  int NB= Integer.parseInt(N2);%>
  	  <%//设置全局变量
	  double RS;
	  double CS;
	  double AS=0;
	  double BS=0;
	  %>
 <%try{ 
 String sql="select * from material";
 String url="jdbc:odbc:chengben";//设置连接字符串
      String user111="chengben";
      String key111="chengben";
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection cn=DriverManager.getConnection(url,user111,key111);//连 接数据库
      Statement sqll=cn.createStatement();
      ResultSet rs=sqll.executeQuery(sql);//执sql语句                                            
	  out.println(rs);
	  int i=0;
	  while(rs.next()){
	  i=i+1;
	  double GF=rs.getDouble(4);//获得系数
	  if (i==1)//判断对应是谁的系数以便计算AS,BS分别为AB分配系数
	  {AS=GF;}
	  else
	  {BS=GF;}
	  }
	  }
      catch(SQLException e){//捕捉异常
      e.printStackTrace();
      }
	  %>
	 <%//计算分配率
	  CS=C1/(NA*AS+NB*BS);
      RS=C2/(NA*AS+NB*BS);
	  %>
<table width="504" border="1" align="center">
  <tr>
    <td width="100" rowspan="2">成本项目</td>
    <td colspan="2" align="center">产品A</td>
    <td colspan="2" align="center">产品B</td>
  </tr>
  <tr>
    <td width="70">总成本</td>
    <td width="102">单位成本</td>
    <td width="80">总成本</td>
    <td width="118">单位成本</td>
  </tr>
  <tr>
    <td>材料费</td>
    <td><%=(float)(AS*NA*CS)%></td>
    <td><%=(float)(AS*CS)%></td>
    <td><%=(float)(BS*NB*CS)%></td>
    <td><%=(float)(BS*CS)%></td>
  </tr>

  <tr>
    <td>燃料费</td>
    <td><%=(float)(AS*NA*RS)%></td>
    <td><%=(float)(AS*RS)%></td>
    <td><%=(float)(BS*NB*RS)%></td>
    <td><%=(float)(BS*RS)%></td>
  </tr> 
  <tr>
    <td>合计</td>
    <td><%=(float)(AS*NA*CS+AS*NA*RS)%></td>
    <td><%=(float)(AS*CS+AS*RS)%></td>
    <td><%=(float)(BS*NB*CS+BS*NB*RS)%></td>
    <td><%=(float)(BS*CS+BS*RS)%></td>
  </tr>
</table>
<div align="center">
  <input type="button"name="but1" value="返回" onclick="listData()"/>
  </div>
</form>
</body>
</html>
