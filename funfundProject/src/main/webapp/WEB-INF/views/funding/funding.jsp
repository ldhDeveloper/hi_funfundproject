<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.titlebar {
	background: orange;
	text-align: center;
	padding: 20px;
	width: 100%;
	height: 100%;
}

.titlebar2 {
	background: bisque;
	padding: 10px;
	text-align: center;
	width: 100%;
	height: 100%;
}

.bar {
	height: 100%;
	background: white;
}

.margin {
	top-margin: 10px;
	padding: 10px;
}

ul {
	list-style: none;
	margin: 0;
	padding: 0;
	align: center;
}

li {
	margin: 0;
	display: inline-block;
	padding: 0;
	border: 0;
	align: center;
	float:left;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menubar.jsp" flush="true" />
	<div class="container">
		<div class="row">
			<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-sm-12 titlebar">
				<h3>리워드</h3>
				<h5>펀펀의 리워드 상품들을 만나보세요!</h5>
				<br>
				<table align="center" border="1px" width="60%" padding="5px">
			    <tr><td rowspan="3" colspan="2"><img src="images/funding/1.PNG" style="width:100%; height:100%"></td>
			           <td><img src="images/funding/2.PNG" style="width:100%; height:100%;"></td></tr>
			    <tr><td><img src="images/funding/3.PNG" style="width:100%; height:100%;"></td></tr>
			    <tr><td><img src="images/funding/4.PNG" style="width:100%; height:100%;"></td></tr>
			    <tr><td height="30px" class="bar">HOT 프로젝트</td><td class="bar">더위야와라</td><td class="bar">가정의 달</td></tr>
			</table>
	    </div> -->

			<div class="col-lg-12 col-md-12 col-sm-12 col-sm-12 titlebar">
				<ul>
					<li><img src="images/funding/1.PNG"><div><table><tr><button>HOT프로젝트</button><button>더위야와라!</button><button>깔끔한 내방</button></tr></table></div></li>
					<li><img src="images/funding/2.PNG"></li>
					<li><img src="images/funding/3.PNG"></li>
					<li><img src="images/funding/4.PNG"></li>
				</ul>
			</div>
		</div>

		<!-- 카테고리바 -->
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-sm-12 titlebar2">
				<button class="btn btn-default">전체</button>
				<button class="btn btn-default">아이디어</button>
				<button class="btn btn-default">디자인</button>
				<button class="btn btn-default">패션/뷰티</button>
				<button class="btn btn-default">테크</button>
			</div>
		</div>
	</div>

	<div class="container" style="clear: both">
		<div class="col-lg-12 col-md-12 col-sm-12 col-sm-12 margin"
			align="center">
			<img src="images/funding/" style="width: 33.3%;"><br>
			<h2>idea</h2>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용을쓰시오</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12 col-sm-12 margin"
			align="center">
			<img src="images/funding/" style="width: 960px; height: 100px;"><br>
			<h2>design</h2>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12 col-sm-12 margin"
			align="center">
			<img src="images/funding/" style="width: 960px; height: 100px;"><br>
			<h2>fashion/beauty</h2>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12 col-sm-12 margin"
			align="center">
			<img src="images/funding/" style="width: 960px; height: 100px;"><br>
			<h2>tech</h2>
		</div>
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-sm-12">
				<div class="thumbnail" align="center">
					<a href="" target="_blank"> <img src="images/funding/"
						alt="사진1" style="width: 100%">
						<p>
							<span></span> % &nbsp;&nbsp; <span></span>원 달성 &nbsp;&nbsp; <span></span>
							일 남음
						</p>
						<div class="caption">
							<p>내용쓰시오</p>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>