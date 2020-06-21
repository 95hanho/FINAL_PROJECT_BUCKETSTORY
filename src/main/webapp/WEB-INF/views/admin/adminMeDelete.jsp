<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/admin/css/adminDefault.css">
<link rel="stylesheet" href="resources/admin/css/adminBoardList.css">
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/mainRightSide.jsp"></jsp:include>
	</header>
	<div id="adw_body">
		<nav>
			<div id="adw_menu">
				<ul>
					<li><a>축제 작성</a></li>
					<li><a>가입확인</a></li>
					<li><a>결제내역</a></li>
					<li><a>통계</a></li>
					<li><a>신고</a></li>
					<li><a>QnA</a></li>
				</ul>
			</div>
		</nav>
	</div>
		<div id="board-area">
		<div>
			<h2>신고 회원 처리 게시판</h2>
		</div>
			<form action="delectMember.ad" id="form">
			<table class="board">
				<tr>
					<td><input type="checkbox" name="chk_head" id="checkAll"></td>
					<td>번호</td>
					<td>말머리</td>
					<td>경고여부</td>
					<td>아이디</td>
					<td>상태</td>
				</tr>
				<c:forEach var="notify" items="${ list }"> 
					<tr>
						<td><input type="checkbox" name="chk_box" value="${ notify.no_no }"></td>
						<td>${ notify.no_no }</td>
						<td>${ notify.no_kind }</td>
						<td>${ notify.no_check }</td>
						<td>${ notify.sinuser }</td>
						<td>${ notify.status }</td>
					</tr>
				</c:forEach>
			</table>
			</form>
		</div>
				<div id="board-paging">
					<!-- 페이징 처리 -->
						<c:if test="${ pi.currentPage <= 1 }">
						<button id ="prev">이전</button>
						</c:if> 
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="before" value="adminwarning.ad">
								<c:param name="page" value="${ pi.currentPage - 1 }" />
							</c:url>
							<a href="${ before }"><button id ="prev">이전</button></a>
						</c:if>
						 
						<!-- 페이지 --> 
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<button class ="sBtn active">${ p }</button>
							</c:if>

							<c:if test="${ p ne pi.currentPage }">
								<c:url var="pagination" value="adminwarning.ad">
									<c:param name="page" value="${ p }" />
								</c:url>
								<a href="${ pagination }"><button class ="sBtn">${ p }</button></a>
							</c:if>
						</c:forEach> 
						
						<!-- [다음] --> 
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<button id= "next">다음</button>
						</c:if> 
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="after" value="adminwarning.ad">
								<c:param name="page" value="${ pi.currentPage + 1 }" />
							</c:url>
							<a href="${ after }"><button id= "next">다음</button></a>
						</c:if>
				</div>
		<div id="ad_search">
			<select>
				<option>전체보기</option>
				<option>회원 ID</option>
				<option>경고</option>
				<option>강제탈퇴</option>
			</select> <input type="text"> <a href="#">검색</a>
			<button onclick="starting();">강제탈퇴</button>
		</div>
<script>

///* 체크박스 [전체,부분 선택] */
function allCheck() {
	if($("[name=chk_box]").prop("checked")){
		$("[name=chk_box]").prop("checked",false);
	}else{
		$("[name=chk_box]").prop("checked",true);
	}
}// 모두 체크하기
 
function oneCheck(a){
    var allChkBox = $("[name=chk_head]");
    var chkBoxName = $(a).attr("name");
 
    if($(a).prop("checked")){
        checkBoxLength = $("[name="+ chkBoxName +"]").length;
         //전체체크박스 수(모두동의하기 체크박스 제외)
        checkedLength = $("[name="+ chkBoxName +"]:checked").length;
        //체크된 체크박스 수 
        if( checkBoxLength == checkedLength ) {
            allChkBox.prop("checked", true);
            //전체체크박스수 == 체크된 체크박스 수 같다면 모두체크
 
        } else {
            allChkBox.prop("checked", false);
        }
    } else {
        allChkBox.prop("checked", false);
    }
}
 
$(function(){
    $("[name=chk_head]").click(function(){
        allCheck(this);
//         console.log(this);
        //모두동의하기 체크박스 클릭시
    });
    $("[name=chk_box]").each(function(){
        $(this).click(function(){
            oneCheck(this);
        });
    });
});

/* 강제 탈퇴 */
function starting(){
	
	var del_Arr = [];
	
	$("input[name='chk_box']:checked").each(function(i){
		del_Arr.push($(this).val());
	});
	
	$.ajax({
		url: 'delectMember.ad',
		data: {Notify : del_Arr},
		success: function(data){
			
		}
	});
}
</script>










</body>
</html>