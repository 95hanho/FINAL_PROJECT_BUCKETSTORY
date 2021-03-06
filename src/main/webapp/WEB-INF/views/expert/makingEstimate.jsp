<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>makingEstimate</title>
<link rel="stylesheet" href="resources/expert/css/estimate.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/expert/hp_common.jsp" />
<c:import url="/WEB-INF/views/layout/mainNav.jsp"/>
<c:import url="/WEB-INF/views/layout/mainLeftSide.jsp"/>

<section>
	<div id="page">
		<h1 style="text-align:center;">견적서 작성</h1>
		<br><br>
		<br><br>
				<div id="bucketArea">
				   <img src="resources/muploadFiles/${ bkImg.mweb }" id="bkImg">
				
				
				
				<div id="bkContent">
				<br>
					<h1 id="bkName" style="text-align:center;">${ bucket.bkName }</h1>
					<br>
					<p>${ bucket.bkContent }</p>
				</div>
				
				</div>
				<br><br>
		
		<div id="memberInfo">
			<h2 class="subtitle">요청회원 정보</h2>
			<br>
			<table id="helperProfile" style="border:1px solid black;">
				<tr>
					<c:if test="${ member.prImage == null }">
						<td rowspan="3" style="width: 185px;"><img src="resources/expert/images/photo.jpg" id="profileImage" ></td>
					</c:if>
					<c:if test="${ member.prImage != null }">
						<td rowspan="3" style="width: 185px;"><img src="resources/member/images/profiles/${ member.prImage } " id="profileImage" ></td>
					</c:if>
					<td>닉네임:${ member.nickName } </td>
					<td>요청날자:${ er.esr_enrollDate }</td>
				</tr>
				<tr>
					<td>성별:${ member.gender }	</td>
					<td></td>
					
				</tr>
				<tr>
					<td>연락처:${ member.phone}</td>
					<td></td>
				</tr>
			</table>
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
					<td>${ er.esr_startDate }</td>
					<td>${ er.esr_endDate }</td>
				</tr>
			</table>
		</div>
		<br>
		<br>
		<div id="subtitle">
			<h2 class="subtitle">견적 요청사항</h2>
			<textarea rows="10" cols="100" id="Precautions" name="Precautions" readonly>${ er.precautions }</textarea>
		</div>
		<br>
		<br>
		
	<form id="send" action="updateEstimate.ex" enctype="Multipart/form-data">
		<div id="estimate">
			<h2>견적내용</h2>
			<textarea rows="10" cols="100" id="contents" name="es_content"  placeholder="견적서 간략소개 작성">${ es.es_content }</textarea>
			<input type="hidden" name="es_no" value="${ es.es_no }">
			<table id="costTable" style="width:383px;">
				<tr>
					<td><h3 style="display:inline;float:left;">견적금액</h3></td>
					<td colspan="3"><input type="text" name="es_price" id="cost" style="width:90%; height:35px;" value="${ es.es_price }">원</td>
				</tr>
				<c:if test="${ option ne null }">
					<c:forEach var="op" items="${ option }">
						<tr class="optionAdd">
							<td></td>
							<td><input type="text" class="optionName" name="optionName" style="width:100%;" placeholder="옵션이름" value="${ op[0] }"></td>
							<td></td>
							<td><input type="number" class="optionCost" name="optionPrice" style="width:83%;" placeholder="옵션가격" value="${ op[1] }">원</td>
							<td></td>
						</tr>
					</c:forEach>
				</c:if>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><div id="addOption" style="float:right; cursor:pointer;">옵션추가</div></td>
				</tr>
				<tr class="fileAdd">
					<td><h3 style="display:inline;float:left;width: 75px;">파일첨부</h3></td>
					<td colspan="3"><input type="file" name="uploadFile" multiple="multiple"></td>
					<td></td>
				</tr>
				
				<c:if test="${ media ne null }">
					<c:forEach var="file" items="${ media }">
						<tr class="fileAdd">
							<td><h3 style="display:inline;float:left;width: 75px;">첨부파일</h3></td>
							<td colspan="3"><a href="${ contextPath }/resources/muploadFiles/${ file.mweb }" download="${ file.morigin }">${ file.morigin }</a></td>
							<td><b style="cursor:pointer;" onclick="deleteMedia(${file.mnumber},${es.es_no });">x</b></td>
							<!--  <td>x</td>-->
						</tr>
					</c:forEach>
				</c:if>
				
			</table>
			</div>
			<div id="buttonArea">
				<button type="button" onclick="sendstatus(1);">견적보내기</button>
				<button type="button" onclick="sendstatus(2);">임시저장</button>
				<button type="button" onclick="history.go(-1);">취소</button>
			</div>
			<script>
			var OptionCount=0;
			var fileCount=1;
				$('#addOption').on('click',function(){
					if(OptionCount<5){
						var optionTr = '<tr class="optionAdd">'
									   +'<td></td>'
									   +'<td><input type="text" class="optionName" name="optionName" style="width:100%;" placeholder="옵션이름"></td>'
									   +'<td></td>'
						               +'<td><input type="number" class="optionPrice" name="optionPrice" style="width:83%;" placeholder="옵션가격">원</td>'
									   +'<td><b class="deleteOption">&nbsp;x</b></td>'
						               +'</tr>';
					
						var lastTr =$('.optionAdd:last');
						lastTr.after(optionTr);
						OptionCount ++;
						console.log(OptionCount);
					}else{
						alert("옵션은 5개까지만 설정 가능합니다.");
					}
				});
				
				function sendstatus(val){
					if(val ==2){
						if (confirm("임시 저장 하시겠습니까?") == true){    //확인
							var input = $("<input>") .attr("type", "hidden") .attr("name", "status").val(val); $('#send').append($(input));
							$('#send').submit();
						}else{   //취소
						    return false;
						}
					}else if(val==1){
						if(${ sessionScope.loginCompany.point > 500 }){
							if(confirm("견적서를 보낸뒤에는 수정할수 없습니다. \n 계속하시겠습니까?") == true){
								var input = $("<input>") .attr("type", "hidden") .attr("name", "status").val(val); $('#send').append($(input));
								$('#send').submit();
							}else{
								return false;
							}
						}else{
							if(confirm("보유하고 있는 point가 부족합니다. \n 현재 보유포인트: "+ ${sessionScope.loginCompany.point}+"\n 포인트충전 페이지로 이동하시겠습니까?") == true){
								location.href="point.ex";
								return false;
							}else{
								return false;
							}
						}
					}
				}
				
				$(document).on('click',".deleteOption",function(){
					var trHtml = $(this).parent().parent();
			        
			        trHtml.remove();
			        OptionCount--;
			        console.log(OptionCount);
				});
				
				
				jQuery(document).ready(function($){
					$('#cost').on('focus',function(){
						var val =$('#cost').val();
						if(!isEmpty(val)){
							val= val.replace(/,/g,'');
							$('#cost').val(val);
						}
					});
					
					$('#cost').on('blur',function(){
						var val=$('#cost').val();
						if(!isEmpty(val)&& isNumeric(val)){
							val= currencyFormatter(val);
							$('#cost').val(val);
						}
					});
				});
				
				//NULL check
				function isEmpty(value){
					if(value.length == 0 || value==null){
						return true;
					}else{
						return false;
					}
				}
				
				function isNumeric(value){
					var regExp =/^[0-9]+$/g;
					return regExp.test(value);
				}
				function currencyFormatter(amount){
					return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
				}
				
				function deleteMedia(mnumber,esno){
					$.ajax({
						url: 'deleteMedia.ex',
						dataType:'json',
						data: {mnumber:mnumber,
								esno:esno},
						success:function(){
							location.reload();
							
						}
					});
				}
			</script>
			
	</form>
	</div>
	</section>
</body>
</html>