<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
  <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="resources/expert/css/ex_infoUpdateForm.css">
<title>Insert title here</title>
</head>
<body>
<c:import url="../common/header.jsp"/>
<c:import url="../common/mainNav.jsp"/>
<c:import url="../common/mainLeftSide.jsp"/>
<div id="page">
	<div id="page-1">
		<div id="inputPhoto">
			<img src="<%=request.getContextPath() %>/views/���-1.jpg" id="mainPhoto" name="mainPoto">
		</div>
		
		<div id="sum-upPage">
			<ul id="submenubar">
				<li>��� &nbsp</li>
				<li>�Ұ� &nbsp</li>
				<li>����</li>
			</ul>
			
			<hr style="clear:left;">
			
			<table id="helperProfile" style="border:1px solid black; width:600px;height:200px;">
				<tr>
					<td rowspan="2"><img src="<%=request.getContextPath() %>/views/������.png" id="profileImage" ></td>
					<td><input type="text" id="helperName" placeholder="��ü�̸� �Է�"></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="2">
						<div>
						<textarea style="width: 396px;height: 100px;"placeholder="���ܼҰ� �Է�"></textarea>
						</div>
					</td>
				</tr>
			</table>
			
			<hr>
			
			<h2><input type="text" name="helperInfo" placeholder="��ü����"></h2>
			<textarea style="width: 600px;height: 100px;"placeholder="�󼼼Ұ� �Է�"></textarea>
			<hr>
			
			<div id="categorybar">
				<img class="category" src="">
				<img class="category" src="">
				<img class="category" src="">
				<img class="category" src="">
				<img class="category" src="">
				<img class="category" src="">
				<img class="category" src="">
				<img class="category" src="">
				<img class="category" src="">
			</div>
			<br clear="left">
			<div class="bucketList" style="margin-top:30px;">
				<table>
					<tr>
						<td rowspan="2"><img style="width: 90px;"id="bucketListImage" src="<%=request.getContextPath()%>/views/������.png"></td>
						<td>��Ŷ����Ʈ �̸�</td>
					</tr>
					<tr>
						<td>��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
						</td>
					</tr>
				</table>
			</div>
			<div class="bucketList" style="margin-top:30px;">
				<table>
					<tr>
						<td rowspan="2"><img style="width: 90px;"id="bucketListImage" src="<%=request.getContextPath()%>/views/������.png"></td>
						<td>��Ŷ����Ʈ �̸�</td>
					</tr>
					<tr>
						<td>��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
						</td>
					</tr>
				</table>
		</div>
		<div class="bucketList" style="margin-top:30px;">
				<table>
					<tr>
						<td rowspan="2"><img style="width: 90px;"id="bucketListImage" src="<%=request.getContextPath()%>/views/������.png"></td>
						<td>��Ŷ����Ʈ �̸�</td>
					</tr>
					<tr>
						<td>��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
						</td>
					</tr>
				</table>
		</div>
		<div class="bucketList" style="margin-top:30px;">
				<table>
					<tr>
						<td rowspan="2"><img style="width: 90px;"id="bucketListImage" src="<%=request.getContextPath()%>/views/������.png"></td>
						<td>��Ŷ����Ʈ �̸�</td>
					</tr>
					<tr>
						<td>��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
						</td>
					</tr>
				</table>
		</div>
		<div class="bucketList" style="margin-top:30px;">
				<table>
					<tr>
						<td rowspan="2"><img style="width: 90px;"id="bucketListImage" src="<%=request.getContextPath()%>/views/������.png"></td>
						<td>��Ŷ����Ʈ �̸�</td>
					</tr>
					<tr>
						<td>��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
							��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ���� ��Ŷ����Ʈ ���� ����
						</td>
					</tr>
				</table>
		</div>
	</div>
</div>
	<div id="page-2">
		<ul style="padding-inline-start: 0px;">
			<li><h5>�Բ��ϴ� ��Ŷ����Ʈ</h5></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
			<li><a href="">��Ŷ����Ʈ</a></li>
		</ul>
		
		<div id="subBtn">
			������� ��û
		</div>
	</div>
		<div id="modal">
					   
			<div class="modal_content">
				<img id="bucketImage" src="<%=request.getContextPath()%>/views/���-1.jpg">
					       
				<div id="area1">
					<h2 style="display:inline;">��Ŷ����Ʈ �̸�</h2>
					<textarea id="bucketContent" readonly>
						��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ
						��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ��Ŷ����Ʈ
					</textarea>
				</div>
					       
				<button type="button" id="modal_close_btn">��� â �ݱ�</button>
					       
			</div>
					   
		<div class="modal_layer"></div>
		</div>
	<script>
	var currentPosition = parseInt($("#page-2").css("top")); $(window).scroll(function() { var position = $(window).scrollTop(); $("#page-2").stop().animate({"top":position+currentPosition+"px"},1000); });

	$(".bucketList").on('click', function() {
    	$('#modal').css({"top":(($(window).height()-$('#modal').outerHeight())/2+$(window).scrollTop()+80)+"px",
						 "left":(($(window).width()-$('#modal').outerWidth())/2+$(window).scrollLeft())+"px"})
       $('#modal').show();
    });
   
    document.getElementById("modal_close_btn").onclick = function() {
        document.getElementById("modal").style.display="none";
    }   
	</script>
</div>
</body>
</html>