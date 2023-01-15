<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, jspMember.*"%>
<!-- memberAll.jsp -->
<%@ include file="../top.jsp"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String mode = request.getParameter("mode");
	if (mode == null) {
		mode = "all";
	}
%>

<jsp:useBean id="mbdao" class="jspMember.MemberDAO"/>
<jsp:setProperty property="*" name="mbdao"/>
<div align="center">
	<hr color="green" width="300">
	<% if (mode.equals("all")){ %>
	<h2>ȸ �� �� �� �� ��</h2>
	<%} else { %>
	<h2>ȸ�� ã��</h2>
	 <form name="f" method="post">
	 <select name="search">
	 		<option value="id">���̵�</option>
	 		<option value="name">�̸�</option>
	 	</select>
	 	<input type="text" name="searchString" />
	 	<input type="submit" value="ã��"/>
	 	</form>
<%} %>	
	<hr color="green" width="300">
	<table border="1" width="100%">
		<tr>
			<th>��ȣ</th>
			<th>�̸�</th>
			<th>���̵�</th>
			<th>�̸���</th>
			<th>��ȭ��ȣ</th>
			<th>������</th>
			<th>���� | ����</th>
		</tr>
<%		
		List<MemberDTO> list = null;
		if (mode.equals("all")) list = mbdao.listMember();
			else list = mbdao.findMember(); 
		if (list == null || list.size() == 0){%>
		<tr>
			<td colspan="7">��ϵ� ȸ���� �����ϴ�.</td>
		</tr>
<%	}else { 
			for(MemberDTO dto : list){%>
		<tr>
			<td><%=dto.getNo()%></td>
			<td><%=dto.getName()%></td>
			<td><%=dto.getId()%></td>
			<td><%=dto.getEmail()%></td>
			<td><%=dto.getAllHp()%></td>
			<td><%=dto.getJoindate()%></td>
			<td>
			<a href="jspMember/member_edit.jsp?no=<%=dto.getNo()%>"></a>���� | 
			<a href="member_delete.jsp?no=<%=dto.getNo()%>">����</a></td>
		</tr>	
<%		} 
		}%>		
	</table>
</div>
<%@ include file="../bottom.jsp"%>













