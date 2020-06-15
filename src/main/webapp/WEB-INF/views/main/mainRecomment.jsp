<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추천버킷</title>
	<link rel="stylesheet" href="resources/main/css/main.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<c:set var="menuNum" value="1" scope="application"/>
	<header>
		<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>				
	</header>
	<nav><jsp:include page="/WEB-INF/views/layout/mainNav.jsp"/></nav>
	<jsp:include page="/WEB-INF/views/layout/mainRightSide.jsp"/>
	<div id="extra"></div>
	<div id="search">
		<div id="search-wrap">
			<img id="search-img" src="resources/layout/images/검색창버튼.png">
		</div>
	</div>
	<%@ include file="searchscreen.jsp" %>
	<section>
		<jsp:include page="/WEB-INF/views/layout/mainLeftSide.jsp"/>
		<c:forEach var="b" items="${ bucketList }">
		<c:if test="${ b.cateNum == category || category == 0}">
		<div class="bucket" id="bucket${ b.bkNo }" onclick="bkDetail(${b.bkNo}, ${b.cateNum}, '${b.bkName}', '${b.bkContent}', '${b.tag}', '${b.userId}');">
			<!-- 버킷 사진 -->
			<c:forEach var="m" items="${blImg}">
				<c:if test="${ m.bkno == b.bkNo }">
<script>
	$('#bucket${m.bkno}').css('background-image', 'url("resources/muploadFiles/${m.mweb}")');
</script>
				</c:if>
			</c:forEach>
			<div class="bucketContent">
				<div class="c-category">
					<c:choose>
						<c:when test="${ b.cateNum == 1 }"><span style="color:#00c5bc;">Travel</span><c:set var="cateName" value="Travel"/></c:when>
						<c:when test="${ b.cateNum == 2 }"><span style="color:#fd8ab1;">Sport</span><c:set var="cateName" value="Sport"/></c:when>
						<c:when test="${ b.cateNum == 3 }"><span style="color:#fd8b42;">Food</span><c:set var="cateName" value="Food"/></c:when>
						<c:when test="${ b.cateNum == 4 }"><span style="color:#c78646;">New Skill</span><c:set var="cateName" value="New Skill"/></c:when>
						<c:when test="${ b.cateNum == 5 }"><span style="color:#9f7ed7;">Culture</span><c:set var="cateName" value="Culture"/></c:when>
						<c:when test="${ b.cateNum == 6 }"><span style="color:#6fc073;">Outdoor</span><c:set var="cateName" value="Outdoor"/></c:when>
						<c:when test="${ b.cateNum == 7 }"><span style="color:#efc648;">Shopping</span><c:set var="cateName" value="Shopping"/></c:when>
						<c:when test="${ b.cateNum == 8 }"><span style="color:#87adf8;">Lifestyle</span><c:set var="cateName" value="Lifestyle"/></c:when>
					</c:choose>
				</div>
				<div class="c-bucket">
					<div class="c-bucket-1">${ b.bkName }</div>
				</div>
				
				<c:set var="Sloop_flag" value="false"/>
				<c:forEach var="s" items="${ shareList }">
					<c:if test="${s.bkNo == b.bkNo}">
						<c:set var="Sloop_flag" value="true"/>
					</c:if>
				</c:forEach>
				<c:if test="${not Sloop_flag}">
				<div class="c-Add" id="c-Add${ b.bkNo }">
					<div class="c-addBtn" onclick="sharebl(${ b.bkNo }, '${ b.userId }');"> + ADD</div>
				</div>
				</c:if>
				<div class="c-likewish" id="c-likewish${ b.bkNo }">
					<div class="c-likeBtn" id="c-likeBtn${ b.bkNo }" onclick="blLikeUp(${ b.bkNo });"><span class="likehover" style="font-size:20px">♡ </span><label class="likelabel">${ b.bkLike }</label></div>
					<div class="c-wishBtn" id="c-wishBtn${ b.bkNo }" onclick="wishRegist(${ b.bkNo }, '${ b.userId }');">
						<span class="wishhover" style="font-size:20px">☆ </span>
						위시 
						<c:set var="loop_flag" value="false"/>
						<c:forEach var="w" items="${ wishList }">
							<c:if test="${w.bkNo == b.bkNo}">
								<c:set var="loop_flag" value="true"/>
							</c:if>
						</c:forEach>
						<c:if test="${loop_flag}"><label class="wishlabel">취소</label></c:if>
						<c:if test="${not loop_flag}"><label class="wishlabel">등록</label></c:if>
					</div>
				</div>
			</div>
		</div>
<script>
	//좋아요위시버튼 나오게하기
	$('#bucket${ b.bkNo }').hover(function(){
		$('#c-likewish${ b.bkNo }').show();
	}, function(){
		$('#c-likewish${ b.bkNo }').hide();
	});
</script>
		</c:if>
		</c:forEach>
	</section>
	<div id="FullOverLay">
		<div id="bucketDatail">
			<div id="bucketexit">X</div>
			<div id="bucketimg">
				<div id="bucketcate">FOOD</div>
				<div id="buckettitle">리틀 포레스트에 나오는 음식 따라 만들기</div>
				<div id="bucketAdd"> + ADD</div>
				<div id="bucketlike">♡ </div>
				<div id="bucketwish">☆ </div>
			</div>
			<div id="bucketcp">
				<div id="bucketTag">
					<div id="bucketTag1"><span>#</span><label>화이트데이</label></div>
					<div id="bucketTag1"><span>#</span><label>화이트데이</label></div>
					<div id="bucketTag1"><span>#</span><label>화이트데이</label></div>
					<div id="bucketTag1"><span>#</span><label>화이트데이</label></div>
					<div id="bucketTag1"><span>#</span><label>화이트데이</label></div>
				</div>
				<div id="bucketexplain">한옥에서 즐기는 타이푸드 식당 동남아. 요즘 핫한 동네 익선동에 들어서면 '동남아' 세 글자가 쓰여진 정직한 간판이 반겨준다. 내부에는 깨진 장독대와 푸른 식물이 한옥과 어우러져 이색 풍경이 펼쳐진다. 태국 유명 쿠킹클래스인 바이파이 출신 셰프가 직접 선보이는 팟타이부터 똠양꿍, 태국식 만두 퉁텅까지 로컬의 맛을 그대로 살렸다. 창밖 아래 풍경을 보면서 식사할 수 있는 2층 좌석을 추천. 종로 3가역에서 걸어서 5분 거리로 위치도 좋다. 팟타이 10,000원, 똠양꿍 12,000원 영업시간은 12:00-22:00	</div>
				<div id="bucketcompany">
					<ul>
						<li>삼성 여행사<button>견적서 작성</button></li>
						<li>LG 식품<button>견적서 작성</button></li>
						<li>아시아나항공 숙박<button>견적서 작성</button></li>
						<li>오리온 과자<button>견적서 작성</button></li>
						<li>오리온 과자<button>견적서 작성</button></li>
						<li>오리온 과자<button>견적서 작성</button></li>
						<li>오리온 과자<button>견적서 작성</button></li>
					</ul>
				</div>
				<div id="bucketcpeventD">
					<button>행사 펼치기</button>
				</div>
			</div>
			<div id="bucketwith">
				<div id="bucketwithCount"><span>14</span>명이 이 버킷 리스트를 함께 합니다.</div>
				<div id="bucketwithPro">
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
					<div id="profile-div">
						<div id="profile1"></div>
						<div id="profile2">한호성</div>
					</div>
				</div>
				<div id="bucketwithBN">
					<a id="bucketwithBN-a1">이전</a>
					<div id="bucketwithBN-Count">1/2</div>
					<a id="bucketwithBN-a2">다음</a>
				</div>
			</div>
			<div id="bucketcpEvent"></div>
		</div>
		
	</div>
	
	
</body>
<script>
//버킷 좋아요 올리기
function blLikeUp(bkNo){
	$.ajax({
		url:'blLike.ho',
		data:{
			bkNo:bkNo
		},
		success:function(data){
			var blLike = '#c-likeBtn'+bkNo+'>label';
			$(blLike).text(data);
			$('#bucketlike').text(data);
			setTimeout(function(){
				$('#bucketlike').text('♡');
			}, 2000);
		}
	});
}

//위시 등록취소하기
function wishRegist(bkNo, userId){
	if('${loginUser.userId}' == userId){
		alert("나의 버킷은 위시등록 할 수 없습니다.");
	} else{
		$.ajax({
			url:'wishRegi.ho',
			data:{
				bkNo:bkNo
			},
			async : false,
			success:function(data){
				var blwish = '#c-wishBtn'+bkNo+'>label';
				$(blwish).text(data);
			}
		});
	}
	if($('#c-wishBtn'+bkNo+'>label').text() == '취소'){
		$('#bucketwish').css('color', '#10ccc3');
	} else if($('#c-wishBtn'+bkNo+'>label').text() == '등록'){
		$('#bucketwish').css('color', 'white');
	}
}

// 공유버킷등록
function sharebl(bkNo, userId){
	if('${loginUser.userId}' == userId){
		alert("나의 버킷은 공유할 수 없습니다.");
	} else{
		var result = confirm("이 버킷리스트를 공유하시겠습니까?");
		if(result){
			$.ajax({
				url:'sharebl.ho',
				data:{
					bkNo:bkNo
				},
				success:function(data){
					if(data == 'success'){
						var blshare = '#c-Add'+bkNo;
						$(blshare).hide();
						$('#bucketAdd').hide();
						alert("나의 버킷에 공유되었습니다.");
					}
				}
			});
		} else{
			alert("공유 취소");
		}
	}
}

// 버킷 디테일보기
function bkDetail(bkNo, cateNum, bkName, bkContent, tag, userId){
	switch(cateNum){
	case 1: $('#bucketcate').html('<span style="color:#00c5bc;">Travel</span>'); break;
	case 2: $('#bucketcate').html('<span style="color:#fd8ab1;">Sport</span>'); break;
	case 3: $('#bucketcate').html('<span style="color:#fd8b42;">Food</span>'); break;
	case 4: $('#bucketcate').html('<span style="color:#c78646;">New Skill</span>'); break;
	case 5: $('#bucketcate').html('<span style="color:#9f7ed7;">Culture</span>'); break;
	case 6: $('#bucketcate').html('<span style="color:#6fc073;">Outdoor</span>'); break;
	case 7: $('#bucketcate').html('<span style="color:#efc648;">Shopping</span>'); break;
	case 8: $('#bucketcate').html('<span style="color:#87adf8;">Lifestyle</span>'); break;
	}
	$('#buckettitle').text(bkName);
	$('#bucketexplain').text(bkContent);
	$('#bucketlike').attr('onclick', 'blLikeUp('+bkNo+');');
	$('#bucketAdd').attr('onclick', 'sharebl('+bkNo+',"'+userId+'");');
	$('#bucketwish').attr('onclick', 'wishRegist('+bkNo+',"'+userId+'");');
	var tags = tag.split(',');
	$('#bucketTag').html('');
	for(var i in tags){
		$('#bucketTag').append('<div id="bucketTag1"><span>#</span>'+tags[i]+'</div>');
	}
	if(!$('#c-Add'+bkNo).length){
		$('#bucketAdd').hide();
	} else{
		$('#bucketAdd').show();
	}
	if($('#c-wishBtn'+bkNo+'>label').text() == '취소'){
		$('#bucketwish').css('color', '#10ccc3');
	} else{
		$('#bucketwish').css('color', 'white');
	}
	// 사진 가져오기
	$.ajax({
		url:'bkDetailMedia.ho',
		data:{
			bkNo:bkNo
		},
		async : false,
		success:function(data){
			$('#bucketimg').css('background-image', 'url("http://images.hwlife.hscdn.com//library/'+data+'_view_01.jpg")');
		}
	});
	// 공유한 사람
	$.ajax({
		url:'bkDetailShare.ho',
		data:{
			bkNo:bkNo
		},
		async : false,
		success:function(data){
			if(data.length > 0){
				$('#bucketwithPro').html('');
				$('#bucketwithCount>span').text(data.length);
				for(var key in data){
					if(data[key].prImage != null){
						var $div = '<div id="profile-div"><div id="profile1"><img src="resources/muploadFiles/'+data[key].prImage+'" style="width:100%;height:100%"></div><div id="profile2">'+data[key].nickName+'</div></div>';
						$('#bucketwithPro').append($div);
					} else{
						var $div = '<div id="profile-div"><div id="profile1"></div><div id="profile2">'+data[key].nickName+'</div></div>';
						$('#bucketwithPro').append($div);
					}
				}
			} else{
				$('#bucketwithPro').html('');
				$('#bucketwithCount>span').text('0');
			}
		}
	});
}
	$(function(){
		// --현재 카테고리 표시
		$('#cssmenu>ul>li:eq(2)>a').css({'color':'#CB6CFF','border-bottom':'2px solid #a047c0'});
		//console.log($(window).width());
		
		
		// 카테고리 종류
		var category = ${category};
		if(category == 0){
			$('#categoryImg1').prop('src','resources/layout/images/allhover.png');
			$('#category1').css('background','silver');
			$('#category1').unbind('mouseover mouseout');
		} else if(category == 1){
			$('#categoryImg2').prop('src','resources/layout/images/여행hover.png');
			$('#category2').css('background','#D4F4FA');
			$('#category2').unbind('mouseover mouseout');
		} else if(category == 2){
			$('#categoryImg3').prop('src','resources/layout/images/운동hover.png');
			$('#category3').css('background','#FF4848');
			$('#category3').unbind('mouseover mouseout');
		} else if(category == 3){
			$('#categoryImg4').prop('src','resources/layout/images/foodhover.png');
			$('#category4').css('background','#FFCD12');
			$('#category4').unbind('mouseover mouseout');
		} else if(category == 4){
			$('#categoryImg5').prop('src','resources/layout/images/skillhover.png');
			$('#category5').css('background','#FFF612');
			$('#category5').unbind('mouseover mouseout');
		} else if(category == 5){
			$('#categoryImg6').prop('src','resources/layout/images/culturehover.png');
			$('#category6').css('background','#2FED28');
			$('#category6').unbind('mouseover mouseout');
		} else if(category == 6){
			$('#categoryImg7').prop('src','resources/layout/images/campinghover.png');
			$('#category7').css('background','#1266FF');
			$('#category7').unbind('mouseover mouseout');
		} else if(category == 7){
			$('#categoryImg8').prop('src','resources/layout/images/shoppinghover.png');
			$('#category8').css('background','#4D48E1');
			$('#category8').unbind('mouseover mouseout');
		} else if(category == 8){
			$('#categoryImg9').prop('src','resources/layout/images/lifestylehover.png');
			$('#category9').css('background','#B95AFF');
			$('#category9').unbind('mouseover mouseout');
		}
		
		// --section 버킷들 width에 따라 height변화
		var hg = $('.bucket').css('width');
		$('.bucket').css('height', hg);
		
		$(window).resize(function(){
			var hg = $('.bucket').css('width');
			$('.bucket').css('height', hg);
			var bkhg = $('#bucketDatail').width()/16 * 9;
			$('#bucketimg').css('height', bkhg);
			var bkcphg = $('#bucketimg').width()-411;
			$('#bucketcp').css('width', bkcphg);
		});
		
		// 검색창 나오게 하기
		$('#search-img').click(function(){
			$('body').css('height', '100%');
			$('body').css('overflow', 'hidden');
			$('#searchscreen').show();
			$('#searchresult').show(800);
		});
		$('#searchtextBtn').click(function(){
			$('body').css('height', 'auto');
			$('body').css('overflow', 'visible');
			$('#searchscreen').hide();
			$('#searchresult').hide();
		});
		
		// 좋아요위시 특수문자 색
		$('.c-likeBtn').hover(function(){
			$('.likehover').css('color', '#10ccc3');
		}, function(){
			$('.likehover').css('color', 'white');
		});
		$('.c-wishBtn').hover(function(){
			$('.wishhover').css('color', '#10ccc3');
		}, function(){
			$('.wishhover').css('color', 'white');
		});
		
		// 버킷리스트 상세보기 클릭 종류
		$('.bucket').click(function(e){
			if($(e.target).hasClass('c-likeBtn') || $(e.target).hasClass('likehover') || $(e.target).hasClass('likelabel')){
				
			} else if($(e.target).hasClass('c-addBtn')){
				
			} else if($(e.target).hasClass('c-wishBtn') || $(e.target).hasClass('wishhover') || $(e.target).hasClass('wishlabel')){
				
			} else{
				$('body').css('height', '100%');
				$('body').css('overflow', 'hidden');
				$('#FullOverLay').show();
				var bkhg = $('#bucketDatail').width()/16 * 9;
				$('#bucketimg').css('height', bkhg);
				var bkcphg = $('#bucketimg').width()-411;
				$('#bucketcp').css('width', bkcphg);
			}
		});
		
		// 버킷리스트 상세보기 닫기
		$('#bucketexit').click(function(){
			$('#FullOverLay').hide();
			$('body').css('height', 'auto');
			$('body').css('overflow', 'visible');
		});
		
		// 행사 펼치기
		$('#bucketcpeventD>button').click(function(){
			if($('#bucketcpEvent').css('display') == 'none'){
				$('#bucketwith').hide();
				$('#bucketcpEvent').show();
				$('#bucketcpeventD>button').text("행사 접기");
			} else{
				$('#bucketcpEvent').hide();
				$('#bucketwith').show();
				$('#bucketcpeventD>button').text("행사 펼치기");
			}
		});
		
	});
</script>
</html>