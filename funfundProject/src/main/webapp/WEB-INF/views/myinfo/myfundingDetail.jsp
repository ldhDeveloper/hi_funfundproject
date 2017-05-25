<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
.container{
	width: 100%;
}

.row {
	width: 100%;
}

.mlabel {
	border: 1px solid #ddd;
	background-color: #24B3A8;
	/* background: -webkit-linear-gradient(left top, #24B3A8, #58CEB0, #2AC594);
	background: -o-linear-gradient(bottom right, #24B3A8, #58CEB0, #2AC594);
	background: -moz-linear-gradient(bottom right, #24B3A8, #58CEB0, #2AC594); */
	background: linear-gradient(to right, #24B3A8, #58CEB0, #2AC594);
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	width: 100%;
	height: 80px;
	color: #fff;
	font-size: 2vw;
	padding-top: 1.5%;
}

.minfo {
	position: relation;
	z-index: 5px;
	border-bottom: 1px solid #ddd;
	border-left: 1px solid #ddd;
	border-right: 1px solid #ddd;
	background-color: #F8F8F8;
	width: 100%;
	height : 20%;
	padding-top: 3%;
	padding-left: 8%;
	padding-right: 8%;
	padding-bottom: 3%;
}

.mtablestart {
	width: 100%;
}

.mrow {
	width: 220px;
	padding-top: 7%;
}

.mname {
	position: relation;
	z-index: 10px;
	font-size : 1vw;
	font-weight: bold;
	width: 60%;
	text-align: center;
	color: #4D525B;
}

.mgrade {
	width: 80%;
	position: relation;
	z-index: 20px;
	background-color: #3DB8CC;
	border-radius: 5px;
	color: #fff;
	box-shadow: 2px 2px #AFAFAF;
	border: none;
	text-align: center;
	padding-top: 2%;
	font-size: 1vw;
}

.mbtn1 {
	position: relation;
	z-index: 20px;
	background-color: #3DB8CC;
	border-radius: 5px;
	width: 80%;
	color: #fff;
	box-shadow: 2px 2px #AFAFAF;
	border: none;
	text-align: center;
	font-weight: bold;
	font-size: 1vw;
	padding-top: 2%;
}

.mmenu {
	border-bottom: 1px solid #ddd;
	border-left: 1px solid #ddd;
	border-right: 1px solid #ddd;
	background-color: #F8F8F8;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	width: 100%;
	height : 900px;
	padding-top: 2%;
}

.fun-menu{
	color:#3BBFAB !important;
}

.act {
	background-color: #28B5A9;	
}

.active {
	color: white !important;
	font-weight: bold;
}

.otherAct {
	background-color: #55CDAE;
}

.otherActive:hover{
	background-color: #31C698 !important;
	color: white !important;
	font-weight: bold;
}

.bar:hover {

}

.mnameText {
	border: none;
	color: #4D525B;
	width: 40%;
	background-color: #F8F8F8;
}

.mfth {
	text-align: center;
}

.mftd {
	text-align: center;
	cursor:pointer;
}

.mftdrL {
	border-bottom : 1px solid #ddd;
}

.tableStart {
	width: 98%;
	padding-left: 2%;
}

.state {
	border: none;
	border-radius: 9px;
	background-color: #E25253;
	width: 30%;
	height: 25px;
	color: white;
}

.mfthr {
	padding-top: 3%;
	padding-bottom: 3%;
}

.mftdr {
	padding-top: 3%;
	padding-bottom: 3%;
}
</style>

<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/menubar.jsp" flush="true"/>

<br><br>
<div class="container">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">	
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="mlabel" align="center">회원 정보 보기</div>
				
				<div class="minfo">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
						<c:if test="${empty sessionScope.account.pimage }">
						<img class="img-circle img-responsive" src="images/myinfo/basic.png" style="max-width:170px;max-height:170px; width:170px; heigh:150px;"><!-- 사진 값이 들어갈 곳  -->
						</c:if>
						<c:if test="${!empty sessionScope.account.pimage }">
						<img class="img-circle img-responsive" src="images/myinfo/<c:out value='${sessionScope.account.pimage }'/>" style="max-width:170px;max-height:170px; width:170px; heigh:150px;"><!-- 사진 값이 들어갈 곳  -->
						</c:if>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 mrow mname" align="center">
							회원명 | <c:if test="${ empty sessionScope.party.pname}">
		                 				<input type="text" name="pname" class="mnameText" placeholder="이름" value="${ sessionScope.account.nickname }" readonly/>
		                 			</c:if>
		                 			
		                 			<c:if test="${ !empty sessionScope.party.pname}">
		                 				<input type="text" name="pname" class="mnameText" placeholder="이름" value="${ sessionScope.party.pname }" readonly/>
		                 			</c:if>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 mrow" align="center"><label class="mgrade">개인 일반 회원 <!-- 회원 등급이 들어갈 곳  --></label></div>
						<div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 mrow" align="center"><input type="button" class="mbtn1" value="투자 회원 신청" onclick='location.href="investRequest.ao"'></div>
					</div>
				</div>
				
				<div class="mmenu">
					<nav class="navbar navbar-default">
  						<div class="container-fluid">
    						<div class="navbar-header">
      							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        							<span class="sr-only">Toggle navigation</span>
        							<span class="bar">▼</span>
      							</button>
      							
      							<a class="hidden-lg hidden-md navbar-brand">회원 메뉴</a>
    						</div>

    						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      							<ul class="nav navbar-nav">
      								<li><a href="myinfo.ao" class="otherActive">회원 정보 설정</a></li>
        							<li><a href="sellerinfo.ao" class="otherActive">판매자 정보 변경</a></li>
        							<li><a href="puttoproject.ao" class="otherActive">찜한 프로젝트</a></li>
        							<li><a href="newproject.ao" class="otherActive">개설한 프로젝트</a></li>
        							<li class="act"><a class="active" href="myfunding.ao">나의 펀딩 현황<span class="sr-only">(current)</span></a></li>      							        							        							        							       							
      							</ul>
    						</div>
  						</div>
					</nav>
					
					<div class="panel-group">
						<div class="well">
							<div class="alert alert-success">
  								<h6>* 참여프로젝트를 클릭하시면 참여상세 내역에서 결제방법/배송지/배송메모 등을 보실 수 있습니다.</h6>
							</div>
												
    						<div class="panel panel-success">
      							<div class="panel-heading">리워드형 프로젝트</div>
      							<!-- <div class="panel-body">아직 참여한 프로젝트가 없습니다.</div> -->
      							
      							<br>
  									
  									<div class="tableStart">
  									
  									<h3>결제 정보 변경 및 취소</h3>
  									<br>
  									<label>참여한 프로젝트 정보</label><input type="button" value="참여취소">
  									<br>
										<table class="table">
    										<thead>
    											
      											<tr class="mfthr">
        											<th class="mfth">주문번호</th>
        											<th class="mfth">리워드 프로젝트</th>
        											<th class="mfth">마감날짜</th>
        											<th class="mfth">참여금액</th>
        											<th class="mfth">결제상태</th>
      											</tr>
    										</thead>
    
    										<tbody>
      											<tr class="mftdr">
        											<td class="mftd">-4854-20170522180209-323532</td>
        											<td class="mftd"><b class="state">진행중</b> 들고다니면서 마시는 미니 고급 콜드...</td>
        											<td class="mftd">2017.06.16</td>
        											<td class="mftd">17,500원</td>
        											<td class="mftd">결제예정</td>
      											</tr>
      											
      											<!-- <tr class="mftdr">
        											<td class="mftd">-4854-20170522180209-323532</td>
        											<td class="mftd"><b class="state">진행중</b> 들고다니면서 마시는 미니 고급 콜드...</td>
        											<td class="mftd">2017.06.16</td>
        											<td class="mftd">17,500원</td>
        											<td class="mftd">결제예정</td>
      											</tr> -->      											
    										</tbody>
  										</table>
  									</div>  								
  								<br>
    						</div>
    					</div>
    					
    					<br>
      					
      					<div class="well">
    						<div class="alert alert-info">
  								<h6>* 참여프로젝트를 클릭하시면 참여상세 내역에서 마감날짜/청약상태 등을 보실 수 있습니다.</h6>
							</div>
    					   					
    						<div class="panel panel-info">
      							<div class="panel-heading">투자형 프로젝트</div>
      							<div class="panel-body">아직 참여한 프로젝트가 없습니다.</div>
    						</div>
    					</div>
  					</div>										
				</div>				
			</div>
		</div>
	</div>
</div>

<br><br>

</body>
</html>