<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<link href="/funfund/lib/css/common/font.css" rel="stylesheet" />
<link href="/funfund/lib/css/swiper.min.css" rel="stylesheet" />
<meta charset="UTF-8">
<style>
.contain {
	position: relative;
	top: -70px;
}

@media screen and (min-width:1px) and (max-width:900px) {
	.contain {
		top: 0px;
	}
	.ti2 {
		font-size: 7pt;
	}
	.ti {
		font-size: 10pt !important;
	}
	.carousel-caption {
		padding-bottom: 0px !important;
	}
}

.tbar {
	top: -70px;
}

.fun-menu {
	color: white !important;
}

body {
	font-family: myFirstFont !important;
}

.swiper-container {
	width: 100%;
	max-height: 540px !important;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.countbar {
	padding-left: 50px;
}

.ti {
	font-size: 18pt;
}

.catename{
	border: 1px solid #6D696A;
    padding: 5px 10px 5px 10px;
    color: white;
    border-radius: 10px;
    background-color: #6D696A;
}
</style>

<title>home</title>
</head>
<body>
	<!-- 메뉴바 -->
	<jsp:include page="/WEB-INF/views/common/menubar.jsp" flush="true" />


	<!-- 슬라이드 사진 영역 -->
	<div class="row" style="max-height: 535px;">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div class="contain"
				style="padding-left: 0px; padding-right: 0px; width: 100%; clear: both;">

				<!-- Slider main container -->
				<div class="swiper-container">
					<!-- Additional required wrapper -->
					<div class="swiper-wrapper">
						<!-- 슬라이더 입니다. -->
						<div class="swiper-slide">
							<img src="images/home/slide1.gif"
								style="width: 100%; max-height: 540px;" class="img-responsive">
							<div class="carousel-caption">
								<p class="ti">즐거움을 펀딩하라!</p>
								<p class="ti2">enjoy funding funny!</p>
							</div>
						</div>

						<div class="swiper-slide">
							<img src="images/home/slide2.gif"
								style="width: 100%; max-height: 540px;" class="img-responsive">
							<div class="carousel-caption">
								<p class="ti">아름다움을 펀딩하라!</p>
								<p class="ti2">enjoy funding beautiful!</p>
							</div>
						</div>

						<div class="swiper-slide">
							<img src="images/home/slide3.gif"
								style="width: 100%; max-height: 540px;" class="img-responsive">
							<div class="carousel-caption">
								<p class="ti">여유로움을 펀딩하라!</p>
								<p class="ti2">Enjoy funding relaxedly!</p>
							</div>
						</div>

					</div>
					<!-- 만약 페이지네비게이션이 필요하다면 추가하세요 -->
					<div
						class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets">
						<span class="swiper-pagination-bullet"></span> <span
							class="swiper-pagination-bullet"></span> <span
							class="swiper-pagination-bullet"></span>
					</div>

				</div>
			</div>
		</div>
	</div>


	<script src="/funfund/lib/js/swiper.jquery.min.js"></script>
	<script>
		var swiper = new Swiper('.swiper-container', {
			pagination : '.swiper-pagination',
			slidesPerView : 1,
			paginationClickable : true,
			spaceBetween : 30,
			autoplay : 5000,
			autoplayDisableOnInteraction : false,
			loop : true
		});
	</script>

	<div class="hidden-xs col-sm-12 col-md-12 col-lg-12 tbar"
		style="background: orange; height: 100px; width: 100%; color: white;">
		<table
			style="width: 100%; height: 100px; text-align: center; valign: middle;">

			<tr>
				<td style="width: 20%;"></td>
				<td>
					<div style="float: left">
						<i class="fa fa-bar-chart fa-4x" aria-hidden="true"></i>
					</div>
					<div style="float: left; margin-left: 10px;">
						누적 펀딩 건수<br> <label class="comma" style="font-size: 2em"><c:out
								value="${count.itemcount}" /></label>건
					</div>

				</td>
				<td>
					<div style="float: left">
						<i class="fa fa-money fa-4x" aria-hidden="true"></i>
					</div>
					<div style="float: left; margin-left: 10px;">
						누적 펀딩 금액<br> <label id="comma" style="font-size: 2em"></label>원
					</div>

				</td>

				<td>
					<div style="float: left">
						<i class="fa fa-pie-chart fa-4x" aria-hidden="true"></i>
					</div>
					<div style="float: left; margin-left: 10px;">
						펀딩 모집 성공률<br> <label style="font-size: 2em"><c:out
								value="${count.sucrate}" /></label>%
					</div>
				</td>
				<td style="width: 10%">
				<td>
			</tr>
		</table>
	</div>

	<br style="clear: both">
	<br>

	<script>
		var price = <c:out value="${count.totalprice}"/>;
		var price2 = numberWithCommas(price);

		$("#comma").html(price2);

		function numberWithCommas(x) {
			return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	</script>

	
	<div class="container" style="clear: both">
	<c:if test="${!empty category3List }">
	<div class="row" style="background-image:url('/funfund/images/barimg.png'); text-align:center; color:white; background-size:cover;"><h3 style="margin-top:15px;">관심 프로젝트</h3></div>
	<br><br>
		<div class="row" style="margin: 0px 20px 0 20px;">
			<c:forEach var="item" items="${category3List}" varStatus="status">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail" align="center">
						<a href="detail.it?pro_no=<c:out value="${item.pro_no}"/>"> <img
							src="/funfund/images/makeproject/titleimg/<c:out value="${item.thumbnail }"/>"
							alt="사진1" style="width: 100%"> <script>
								$(function() {

									var ecost = "<c:out value='${item.ecost}'/>";
									var fundamount = "<c:out value='${item.fundamount}'/>";
									var persent = Math.round(fundamount * 100
											/ ecost);
									var bar = 0;
									if (persent > 100) {
										bar = 100;
									} else {
										bar = persent;
									}
									var edate = new Date(
											"<c:out value='${item.pedate}'/>");
									var todate = new Date();
									var btMs = edate.getTime()
											- todate.getTime();
									var btDay = Math.round(btMs
											/ (1000 * 60 * 60 * 24));

									//console.log(persent);
									$(
											"#cpersent<c:out value='${status.index}'/>")
											.text(persent);
									$(
											"#cprogressbar<c:out value='${status.index}'/>")
											.attr("aria-valuenow", persent);
									$(
											"#cprogressbar<c:out value='${status.index}'/>")
											.css("width", bar + "%");
									$("#cedate<c:out value='${status.index}'/>")
											.text(btDay);

									if (btDay < 0) {
										$(
												"#cedate<c:out value='${status.index}'/>")
												.hide();
										$(
												"#cyet<c:out value='${status.index}'/>")
												.hide();
										$(
												"#ccomplete<c:out value='${status.index}'/>")
												.show();
									} else {
										$(
												"#ccomplete<c:out value='${status.index}'/>")
												.hide();
										$(
												"#cedate<c:out value='${status.index}'/>")
												.show();
										$(
												"#cyet<c:out value='${status.index}'/>")
												.show();
									}
								})
							</script>
							<div id="progress<c:out value='${status.index}'/>"
								class="progress">
								<div class="progress-bar progress-bar-warning"
									id="cprogressbar<c:out value='${status.index}'/>"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="<c:out value="${item.ecost}"/>"
									style="width: 60%;">
									<span class="sr-only"></span>
								</div>
							</div>
							<p>
								<span id="cpersent<c:out value='${status.index}'/>"></span> %
								<fmt:formatNumber var= "amountNumber" value="${item.fundamount}" type="currency" />
								&nbsp;&nbsp; <span><c:out value="${amountNumber }" /></span>원
								달성 &nbsp;&nbsp; <span id="cedate<c:out value='${status.index}'/>"></span>
								<span id="cyet<c:out value='${status.index}'/>">일 남음</span>
								<spen id="ccomplete<c:out value='${status.index}'/>">펀딩종료</spen>
							</p>

							<div class="caption">
								<p style="height:45px;">
									<c:out value="${item.pname }" />
								</p>
								<span class="catename"><c:out value="${item.category}" /></span>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
			</c:if>	
		<br>
		<div class="row" style="background-image:url('/funfund/images/barimg2.png'); text-align:center; color:white; background-size:cover;"><h3 style="margin-top:15px;">TOP 3</h3></div>
		<br><br>	
		<div class="row" style="margin: 0px 20px 0 20px;">
				<c:forEach var="item" items="${top3List}" varStatus="status">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail" align="center">
						<a href="detail.it?pro_no=<c:out value="${item.pro_no}"/>"> <img
							src="/funfund/images/makeproject/titleimg/<c:out value="${item.thumbnail }"/>"
							alt="사진1" style="width: 100%"> <script>
								$(function() {

									var ecost = "<c:out value='${item.ecost}'/>";
									var fundamount = "<c:out value='${item.fundamount}'/>"
									var persent = Math.round(fundamount * 100
											/ ecost);
									var bar = 0;
									if (persent > 100) {
										bar = 100;
									} else {
										bar = persent;
									}
									var edate = new Date(
											"<c:out value='${item.pedate}'/>");
									var todate = new Date();
									var btMs = edate.getTime()
											- todate.getTime();
									var btDay = Math.round(btMs
											/ (1000 * 60 * 60 * 24));

									//console.log(persent);
									$(
											"#persent<c:out value='${status.index}'/>")
											.text(persent);
									$(
											"#progressbar<c:out value='${status.index}'/>")
											.attr("aria-valuenow", persent);
									$(
											"#progressbar<c:out value='${status.index}'/>")
											.css("width", bar + "%");
									$("#edate<c:out value='${status.index}'/>")
											.text(btDay);

									if (btDay < 0) {
										$(
												"#edate<c:out value='${status.index}'/>")
												.hide();
										$(
												"#yet<c:out value='${status.index}'/>")
												.hide();
										$(
												"#complete<c:out value='${status.index}'/>")
												.show();
									} else {
										$(
												"#complete<c:out value='${status.index}'/>")
												.hide();
										$(
												"#edate<c:out value='${status.index}'/>")
												.show();
										$(
												"#yet<c:out value='${status.index}'/>")
												.show();
									}
								})
							</script>
							<div id="progress<c:out value='${status.index}'/>"
								class="progress">
								<div class="progress-bar progress-bar-warning"
									id="progressbar<c:out value='${status.index}'/>"
									role="progressbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="<c:out value="${item.ecost}"/>"
									style="width: 60%;">
									<span class="sr-only"></span>
								</div>
							</div>
							<p>
								<span id="persent<c:out value='${status.index}'/>"></span> %
								<fmt:formatNumber var= "amountNumber" value="${item.fundamount}" />
								&nbsp;&nbsp; <span><c:out value="${amountNumber }" /></span>원
								달성 &nbsp;&nbsp; <span id="edate<c:out value='${status.index}'/>"></span>
								<span id="yet<c:out value='${status.index}'/>">일 남음</span>
								<spen id="complete<c:out value='${status.index}'/>">펀딩종료</spen>
							</p>

							<div class="caption">
								<p style="height:45px;">
									<c:out value="${item.pname }" />
								</p>
								<span class="catename"><c:out value="${item.category}" /></span>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
		</div>
</body>
<footer>
<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="true" />
</footer>
</html>
