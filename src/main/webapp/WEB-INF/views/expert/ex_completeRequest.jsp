<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/expert/css/ex_completeRequest.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:import url="../common/header.jsp"/>
<c:import url="../common/mainNav.jsp"/>
<c:import url="../common/mainLeftSide.jsp"/>
	<div id="page">
		<div id="submenu">
			<ul>
				<li>������û &nbsp</li>
				<li>������ &nbsp</li>
				<li><h3 style="display: inline;">�Ϸ��û</h3></li>
			</ul>
		</div>
		
		<br clear="left">
		<h2 style="text-align:center;margin-bottom: 73px;margin-top: 76px;">��Ī�Ϸ� ������ ȭ�� �Դϴ�.</h2>		
		
		<div id="requestMember">
			<table style="width: 780px;">
				<tr>
					<td rowspan="4" style="width:100px;">
						<img id="requestImage" src="<%=request.getContextPath() %>/views/������.png" id="profileImage">
					</td>
					<td>
						<h3 style="display:inline">��û������� �г���</h3>
					</td>
					<td>
						��û�� 2020-05-06
					</td>
				</tr>
				<tr>
					<td>
						��û��������� ��Ŷ����Ʈ ī�װ�
					</td>
					<td>
						������ 2020-05-10
					</td>
				</tr>
				<tr>
					<td><h3 style="display:inline;">��Ŷ����Ʈ: ��Ŷ����Ʈ�̸�</h3></td>
					<td style="width: 183px;"><h3>����: �ڡڡڡڡ�(5.0)</h3></td>
				</tr>
				<tr>
					<td><h3 style="display:inline;">�� ���� ���: 1,200,000 ��</h3></td>
					<td></td>
				</tr>
					<td></td>
					<td>
						<div id="bucketListDetail">�ۼ����� ������ ��ȸ</div>
					</td>
					<td>
						<div id="delete">����</div>
					</td>
				<tr>
				</tr>
			</table>
		</div>
		<hr style="width:840px">
		<div id="requestMember">
			<table style="width: 780px;">
				<tr>
					<td rowspan="4" style="width:100px;">
						<img id="requestImage" src="<%=request.getContextPath() %>/views/������.png" id="profileImage">
					</td>
					<td>
						<h3 style="display:inline">��û������� �г���</h3>
					</td>
					<td>
						��û�� 2020-05-06
					</td>
				</tr>
				<tr>
					<td>
						��û��������� ��Ŷ����Ʈ ī�װ�
					</td>
					<td>
						������ 2020-05-10
					</td>
				</tr>
				<tr>
					<td><h3 style="display:inline;">��Ŷ����Ʈ: ��Ŷ����Ʈ�̸�</h3></td>
					<td style="width: 183px;"><h3>����: �ڡڡڡڡ�(5.0)</h3></td>
				</tr>
				<tr>
					<td><h3 style="display:inline;">�� ���� ���: 1,200,000 ��</h3></td>
					<td></td>
				</tr>
					<td></td>
					<td>
						<div id="bucketListDetail">�ۼ����� ������ ��ȸ</div>
					</td>
					<td>
						<div id="delete">����</div>
					</td>
				<tr>
				</tr>
			</table>
		</div>
		<hr style="width:840px;">
		
		<div id="ListAdd">
			<div id="ListArea">
				<h4 style="display:inline">������</h4>
				&nbsp;&nbsp;&nbsp;��
			</div>
		</div>
	</div>
	
</body>
</html>