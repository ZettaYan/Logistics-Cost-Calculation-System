<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<script language="javascript">
function listData(){
document.form1.action="hua.jsp";
	document.form1.submit();
	}
	</script>
</head>
<body>
 <form name="form1" method="post" action="hua.jsp">
  <% String cost1=request.getParameter("txt1");//�����ĸ����ݵ�����C1,C2�ֱ�Ϊ���ϡ�ȼ���ܳɱ���NA,NB�ֱ�ΪA��B����
  String cost2=request.getParameter("txt2");
  int c1= Integer.parseInt(cost1);
  double C1=(double) c1;//ǿ������ת��
  int c2= Integer.parseInt(cost2);
  double C2=(double) c2;
  String N1=request.getParameter("A");
  String N2=request.getParameter("B");
  int NA= Integer.parseInt(N1);
  int NB= Integer.parseInt(N2);%>
  	  <%//����ȫ�ֱ���
	  double RS;
	  double CS;
	  double AS=0;
	  double BS=0;
	  %>
 <%try{ 
 String sql="select * from material";
 String url="jdbc:odbc:chengben";//���������ַ���
      String user111="chengben";
      String key111="chengben";
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      Connection cn=DriverManager.getConnection(url,user111,key111);//�� �����ݿ�
      Statement sqll=cn.createStatement();
      ResultSet rs=sqll.executeQuery(sql);//ִsql���                                            
	  out.println(rs);
	  int i=0;
	  while(rs.next()){
	  i=i+1;
	  double GF=rs.getDouble(4);//���ϵ��
	  if (i==1)//�ж϶�Ӧ��˭��ϵ���Ա����AS,BS�ֱ�ΪAB����ϵ��
	  {AS=GF;}
	  else
	  {BS=GF;}
	  }
	  }
      catch(SQLException e){//��׽�쳣
      e.printStackTrace();
      }
	  %>
	 <%//���������
	  CS=C1/(NA*AS+NB*BS);
      RS=C2/(NA*AS+NB*BS);
	  %>
<table width="504" border="1" align="center">
  <tr>
    <td width="100" rowspan="2">�ɱ���Ŀ</td>
    <td colspan="2" align="center">��ƷA</td>
    <td colspan="2" align="center">��ƷB</td>
  </tr>
  <tr>
    <td width="70">�ܳɱ�</td>
    <td width="102">��λ�ɱ�</td>
    <td width="80">�ܳɱ�</td>
    <td width="118">��λ�ɱ�</td>
  </tr>
  <tr>
    <td>���Ϸ�</td>
    <td><%=(float)(AS*NA*CS)%></td>
    <td><%=(float)(AS*CS)%></td>
    <td><%=(float)(BS*NB*CS)%></td>
    <td><%=(float)(BS*CS)%></td>
  </tr>

  <tr>
    <td>ȼ�Ϸ�</td>
    <td><%=(float)(AS*NA*RS)%></td>
    <td><%=(float)(AS*RS)%></td>
    <td><%=(float)(BS*NB*RS)%></td>
    <td><%=(float)(BS*RS)%></td>
  </tr> 
  <tr>
    <td>�ϼ�</td>
    <td><%=(float)(AS*NA*CS+AS*NA*RS)%></td>
    <td><%=(float)(AS*CS+AS*RS)%></td>
    <td><%=(float)(BS*NB*CS+BS*NB*RS)%></td>
    <td><%=(float)(BS*CS+BS*RS)%></td>
  </tr>
</table>
<div align="center">
  <input type="button"name="but1" value="����" onclick="listData()"/>
  </div>
</form>
</body>
</html>
