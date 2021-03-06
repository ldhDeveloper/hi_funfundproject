<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<script type="text/javascript" src="/funfund/lib/js/jquery-3.2.1.min.js">
</script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
 href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0/css/froala_editor.pkgd.min.css"
 rel="stylesheet" type="text/css" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0/css/froala_style.min.css"
 rel="stylesheet" type="text/css" />
 <script>
$(function() {
	
	
	  $('textarea#froala-editor').froalaEditor({
		  theme: 'Royal',
		  heightMin : '900',
		  heightMax : '1500',
		  language: 'ko',
		  toolbarButtons : ['fullscreen', 
			  				'bold', 'italic', 'underline',
			  				'|', 'fontFamily', 'fontSize', 'color',
			  				'inlineStyle', 'paragraphStyle', '|',
			  				'paragraphFormat', 'align', 'formatOL',
			  				'formatUL', 'outdent', 'indent', 
			  				'-', 'insertLink', 'insertImage', 
			  				 'insertTable', '|',
			  				'specialCharacters', 'insertHR', 'selectAll',
			  				'clearFormatting', '|', 'print', 
			  				'html', '|', 'undo', 'redo']
	  });
	  $('#ntitle').focus();
	});
</script>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.noticeTitle{
background : #666;
text-align : center;
color: white;
height : 100px;
 vertical-align: middle;
}

.ndetail{
width:inherit;
margin:auto;
padding:80px;
}
.ntable {
width : 800px; 
margin : auto;
font-weight:bold;

font-size: 13px;
border: none;
}
.column{
background : #f9f9f9;
width: 70px;
height: 50px;
font-size: 17px;
border : none;
color : black;
}
.details{
width: 100%;
border : none;
height : 50px;
font-size : 20px;
text-indent : 20px;
border-top : 1px solid #666;
border-right : 1px solid #666;
}
form {
border-bottom: none;
}
.submit{
width: 100px !important;

}

.fr-element {
min-height : 500px !important;
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/common/menubar.jsp" flush="true" />
<div class="noticeTitle" >
<h2>공지사항</h2> <p/>
<p>펀펀드의 소식이 담겨있습니다.</p> 
</div>
<div class="container">
<div class="col-lg-12 col-md-12 col-xs-12">
<div class="ndetail">
<form action="#" method="post" onsubmit="return false" >
<table class="ntable">
	<tr><td class="column">제목</td><td> 
<input class="details" id="ntitle" name="ntitle" value='${n.ntitle}' required> </td></tr>
	<tr><td class="column">이름</td><td><input id="writer"  class="details" value="${account.nickname}" readonly></td></tr>
	<tr><td class="column">작성일시</td><td><input id="ndate"  type='date' class="details" value="${n.ndate}" readonly></td></tr>
	<tr><td class="column">조회수</td><td><input id="readCount" type="number" class="details" value='${n.readcount}' readonly></td></tr>
	<tr><td class="column">내용</td>
		<td><textarea id="froala-editor" required>
		${n.ncontent}
		</textarea></td></tr>
	<tr><td></td><td style="text-align:right;"> <button class="btn btn-default" onclick="updateN()">수정</button><a class="btn btn-default" href="nList.no?bname=${n.bname }&page=${page}">목록으로</a></td></tr>
</table>
</form> 


<div class = "down"></div>
<script>
function updateN(){
var ncontent =  $('textarea#froala-editor').froalaEditor('html.get');
var ntitle = $('input[name=ntitle]').val();
var nno = parseInt('${n.nno}');
var page = parseInt('${page}');
$.ajax({
		url : "nUpdate.no",
		data : {"nno" : nno, "bname" : "${n.bname}", "ntitle" : ntitle, "ncontent" : ncontent, "page" : page},
		success : function(data){
				if(data.message = 'success'){
					location.href= "nDetail.no?nno=${n.nno}&bname='${n.bname}'&page=${page}";
				}else{
					alert("게시물이 존재하지 않습니다.");
					location.href="nList.no?bname=${n.bname}&page=${page}";
				}
			}
		});	
}
</script>
<script type="text/javascript" src="/funfund/lib/froala_editor_2.5.1/js/languages/ko.js">
</script>
 <script type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script type="text/javascript" 
  src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js">
  </script><script type="text/javascript" 
  src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>
  <script type="text/javascript" 
  src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0//js/froala_editor.pkgd.min.js"></script>
 </div>
</div>
</div>
<jsp:include page="/WEB-INF/views/common/footer.jsp" flush="true"/>
</body>
</html>