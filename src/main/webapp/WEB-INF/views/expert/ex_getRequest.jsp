<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/expert/css/ex_getRequest.css">
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
				<li><h3 style="display: inline;">������û &nbsp</h3></li>
				<li>������ &nbsp</li>
				<li>�Ϸ��û</li>
			</ul>
		</div>
		
		<br clear="left">
		<h2 style="text-align:center;margin-bottom: 73px;margin-top: 76px;">�������� ��ٸ��� ��Ŷ����Ʈ</h2>		
		
		<div id="requestMember">
			<table style="width: 780px;">
				<tr>
					<td rowspan="3" style="width:100px;">
						<img id="requestImage" src="<%=request.getContextPath() %>/views/������.png" id="profileImage">
					</td>
					<td>
						<h3 style="display:inline">��û������� �г���</h3>
					</td>
					<td>
						2020-05-06
					</td>
				</tr>
				<tr>
					<td>
						��û��������� ��Ŷ����Ʈ ī�װ�
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<td>
						<div id="bucketListDetail">��Ŷ����Ʈ ��û����</div>
					</td>
				</tr>
			</table>
		</div>
		<hr style="width:840px">
		<div id="requestMember">
			<table style="width: 780px;">
				<tr>
					<td rowspan="3" style="width:100px;">
						<img id="requestImage" src="<%=request.getContextPath() %>/views/������.png" id="profileImage">
					</td>
					<td>
						<h3 style="display:inline">��û������� �г���</h3>
					</td>
					<td>
						2020-05-06
					</td>
				</tr>
				<tr>
					<td>
						��û��������� ��Ŷ����Ʈ ī�װ�
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<td>
						<div id="bucketListDetail">��Ŷ����Ʈ ��û����</div>
					</td>
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