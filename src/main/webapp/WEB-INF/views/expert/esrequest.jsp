<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="resources/expert/css/esrequest.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/layout/header.jsp"/>				
	</header>
	<jsp:include page="/WEB-INF/views/layout/mainRightSide.jsp"/>
	<div id="extra"></div>
	<div id="body-wrap">
		<div id="Myheader">
			<table id="table_area">
				<tr>
					<td rowspan="4" style="width: 250px;">
						<img id="profileImg" src="/BucketStory/resources/member/images/profiles/${ getMember.prImage }" />
					</td>
				</tr>
				<tr>
					<td colspan="3" style="font-size: 30px;">${ getMember.nickName }</td>
				</tr>
				<tr>
					<td colspan="3" style="font-size: 20px;">${ getMember.userName }</td>
				</tr>
				<tr>
					<td>게시물 ${ list }</td>
					<td>팔로워 ${ getMember.fwCount }</td>
					<td>팔로우 30</td>
				</tr>
			</table>
		</div>
			<jsp:include page="/WEB-INF/views/layout/MyPageNav.jsp"/>
		<section>
			<form action="insertEsrequest.ex">
				<h1 style="text-align:center;">견적서 작성</h1>
				<br><br>
				<h3 style="text-align:center;">제목: ${ bucket.bkName }</h3>
					
				<div id="memberInfo">
					<h2 class="subtitle">요청헬퍼 정보</h2>
					<br>
					<div id="helperProfile" style="border:1px solid black;">
							<img src="resources/expert/images/photo.jpg" id="profileImage" >
							<h3 style="margin-top: 40px;"> ${ company.coId } </h3>
							<div id="coIntro">
								${company.coIntro }
							</div>
					</div>
				</div>
				<br><br>
				<div class="subtitle">
					<table id="inputSchedule">
						<tr>
							<td rowspan=2><h2 class="subtitle" style="display:inline;">일정기간</h2></td>
							<td>시작일</td>
							<td>종료일</td>
						</tr>
						<tr>
							<td><input type="date" id="esr_startDate" name="esr_startDate"></td>
							<td><input type="date" id="esr_endDate" name="esr_endDate"></td>
						</tr>
					</table>
					<input type="hidden" name="bkNo" value="${ bucket.bkNo }">
					<input type="hidden" name="coId" value="${ company.coId }">
				</div>
				<br>
				<br>
				<div id="subtitle">
					<h2 class="subtitle">견적 요청사항</h2>
					<c:if test="${ not empty eventTitle  }">
						<textarea rows="10" cols="100" id="precautions" name="precautions">${ eventTitle } : ${eventContent }</textarea>
					</c:if>
					<c:if test="${ empty eventTitle }">
						<textarea rows="10" cols="100" id="precautions" name="precautions"></textarea>
					</c:if>
				</div>
				<br>
				<br>
				<div id="btnarea">
					<input type="submit" id="esrequest" class="btn" value="견적 요청">
					<input type="button" id="cancel"  class="btn" value="취소">
				</div>
			</form>
		</section>
	</div>
</body>
</html>