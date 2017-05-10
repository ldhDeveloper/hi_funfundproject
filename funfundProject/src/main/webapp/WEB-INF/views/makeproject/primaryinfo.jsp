<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 편집기사용 -->
  <script type="text/javascript" src="/funfund/lib/js/jquery-3.2.1.min.js" ></script>
    <!-- Include external CSS. -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">
	<link rel="stylesheet" href="/funfund/lib/font-awesome/font-awesome/css/font-awesome.css">
    <!-- Include Editor style. -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.5.1/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.5.1/css/froala_style.min.css" rel="stylesheet" type="text/css" />
  	<link href="/funfund/lib/froala_editor_2.5.1/css/themes/royal.min.css" rel="stylesheet" type="text/css" />
   <!-- Include external JS libs. -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>

    <!-- Include Editor JS files. -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.5.1//js/froala_editor.pkgd.min.js"></script>
<!-- 끝 -->
<script>
	$(function() {
		$('#froala-editor').froalaEditor({
			theme: 'royal',
		      zIndex: 2002,
		      heightMin: 300,
		      heightMax: 300,
			  toolbarBottom: false,
		      toolbarButtons: ['fullscreen', 'bold', 'italic', 'underline', 'strikeThrough', 'subscript', 'superscript', 'fontFamily', 'fontSize', '|', 'color', 'emoticons', 'inlineStyle', 'paragraphStyle', '|', 'paragraphFormat', 'align', 'formatOL', 'formatUL', 'outdent', 'indent', '-', 'insertLink', 'insertImage', 'insertVideo', 'insertFile', 'insertTable', '|', 'quote', 'insertHR', 'undo', 'redo', 'clearFormatting', 'selectAll', 'html']
		}) 
	}); 
</script>
<style>
body {
	background: #f8f8f8 !important;
}

li {
	background: light-gray;
	border-radius: 5px;
}

.middle-submenu {
	width: 900px;
	margin-left: auto;
	margin-right: auto;
}

.active-active {
	background: orange;
	color: white;
}

.input-form {
	width: 900px;
	background: white;
	margin-left: auto;
	margin-right: auto;
	border: 1px solid gray;
	margin-top: 100px;
	padding: 20px;
	margin-left: auto;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/menubar.jsp" />
	<br>
	<div class="middle-submenu">
		<ul class="nav nav-pills middle-submenu"
			style="width: 900px; align: center;">
			<li class="active-active"><a href="#">기본정보</a></li>
			<li><a href="#">리워드</a></li>
			<li><a href="#">스토리</a></li>
			<li><a href="#">메이커정보</a></li>
			<li><a href="#">정산</a></li>
			<li style="margin-left: 20px;"><a href="#">미리보기</a></li>
			<li style="margin-left: 20px;"><a href="#">검토 요청하기</a></li>
		</ul>
	</div>
	<form>
		<!-- 기본정보 입력 화면 -->
		<div id="primary-info" class="input-form">
			<table>
				<tr style="width: 900px;">
					<td rowspan="2" style="width: 200px; font-size: 0.7em">펀펀드 안내
						가능 연락처<br>프로젝트와 관련된 중요 안내사항은 메이커님의 계정으로 등록된 인증된 이메일과 휴대폰번호로
						전달됩니다.<br>이메일 변경이나 인증이 필요하시면 회원정보설정에서 수정해주세요.
					</td>
					<td style="width: 500px;">
						<div
							style="width: 450px; border: 1px solid #ddd; height: 40px; background: #f8f8f8; margin-left: 10px;">
							curryfavour9@gmail.com</div>
					</td>
					<td style="width: 200px;"></td>
				</tr>
				<tr>

					<td>
						<div
							style="width: 450px; border: 1px solid #ddd; height: 40px; background: #f8f8f8; margin-left: 10px;">
							010-7660-7771</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="width: 200px; font-size: 0.7em">프로젝트의 제목<br>제목만
						보고도 어떤 프로젝트인지 알 수 있도록 직관적으로 작성해 주세요.
					</td>
					<td>
						<div
							style="width: 450px; border: 1px solid #ddd; height: 40px; background: #f8f8f8; margin-left: 10px;">
							<input type="text">
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="width: 200px; font-size: 0.7em">목표 금액<br>프로젝트를
						통해 모으고자 하는 금액을 적어 주세요.
					</td>
					<td>
						<div
							style="width: 450px; border: 1px solid #ddd; height: 40px; background: #f8f8f8; margin-left: 10px;">
							<input type="text">원
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="width: 200px; font-size: 0.7em">프로젝트 대표 이미지<br>프로젝트
						카드와 공유 이미지로 사용됩니다. 이미지 등록 가이드를 반드시 확인하고 이미지를 등록해주시기 바랍니다.
					</td>
					<td rowspan="10">
						<div
							style="width: 450px; border: 1px solid #ddd; height: 350px; background: #f8f8f8; margin-left: 10px;">

						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="width: 200px; font-size: 0.7em">메인해시태그<br>필수
						해시태그 검색어를 입력해주세요. 펀펀드 내 또는 검색엔진에서 검색이 용이하도록 하나의 단어로 등록 해주세요. 한글 9자
						또는 영어 18자로 제한되며, 빈칸이 포함되면 안됩니다.
					</td>
					<td>
						<div
							style="width: 450px; border: 1px solid #ddd; height: 100px; background: #f8f8f8; margin-left: 10px;">
							#<input type="text" placeholder="메인해시태그"><br>
							예시:숙면코창슬립닥, 빅이슈홈리스월드컵, 톤도JUMPUP,30km프로젝트, QueenBeeR
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="width: 200px; font-size: 0.7em" rowspan="3">프로젝트의
						키워드<br>서포터에게 프로젝트 추천시 기준이 되는 관심사 키워드입니다. 개설하시는 프로젝트에 해당하는
						키워드를 선택해주세요.( 최소 1개 이상 선택 )
					</td>
					<td>
						<div
							style="width: 450px; border: 1px solid #ddd; height: 40px; background: #f8f8f8; margin-left: 10px;">
							<select style="width: 145px;">
								<option value="">필수입력입니다</option>
								<option value="I000000001">얼리어답터</option>
								<option value="I000000002">IT</option>
								<option value="I000000003">재테크</option>
								<option value="I000000004">자동차</option>
								<option value="I000000005">여행/아웃도어</option>
								<option value="I000000006">건강/헬스케어</option>
								<option value="I000000007">스포츠</option>
								<option value="I000000008">게임/엔터테인먼트</option>
								<option value="I000000009">하이테크</option>
								<option value="I000000010">창업</option>
								<option value="I000000011">비상장주식</option>
								<option value="I000000012">소득공제</option>
								<option value="I000000013">라이프스타일</option>
								<option value="I000000014">패션</option>
								<option value="I000000015">디자인</option>
								<option value="I000000016">음악</option>
								<option value="I000000017">공연/전시</option>
								<option value="I000000018">책</option>
								<option value="I000000019">사회문제해결</option>
								<option value="I000000020">기부/나눔</option>
								<option value="I000000021">친환경</option>
								<option value="I000000022">공유경제</option>
								<option value="I000000023">교육/육아</option>
							</select> <select style="width: 145px;">
								<option value="">필수입력입니다</option>
								<option value="I000000001">얼리어답터</option>
								<option value="I000000002">IT</option>
								<option value="I000000003">재테크</option>
								<option value="I000000004">자동차</option>
								<option value="I000000005">여행/아웃도어</option>
								<option value="I000000006">건강/헬스케어</option>
								<option value="I000000007">스포츠</option>
								<option value="I000000008">게임/엔터테인먼트</option>
								<option value="I000000009">하이테크</option>
								<option value="I000000010">창업</option>
								<option value="I000000011">비상장주식</option>
								<option value="I000000012">소득공제</option>
								<option value="I000000013">라이프스타일</option>
								<option value="I000000014">패션</option>
								<option value="I000000015">디자인</option>
								<option value="I000000016">음악</option>
								<option value="I000000017">공연/전시</option>
								<option value="I000000018">책</option>
								<option value="I000000019">사회문제해결</option>
								<option value="I000000020">기부/나눔</option>
								<option value="I000000021">친환경</option>
								<option value="I000000022">공유경제</option>
								<option value="I000000023">교육/육아</option>
							</select> <select style="width: 145px;">
								<option value="">필수입력입니다</option>
								<option value="I000000001">얼리어답터</option>
								<option value="I000000002">IT</option>
								<option value="I000000003">재테크</option>
								<option value="I000000004">자동차</option>
								<option value="I000000005">여행/아웃도어</option>
								<option value="I000000006">건강/헬스케어</option>
								<option value="I000000007">스포츠</option>
								<option value="I000000008">게임/엔터테인먼트</option>
								<option value="I000000009">하이테크</option>
								<option value="I000000010">창업</option>
								<option value="I000000011">비상장주식</option>
								<option value="I000000012">소득공제</option>
								<option value="I000000013">라이프스타일</option>
								<option value="I000000014">패션</option>
								<option value="I000000015">디자인</option>
								<option value="I000000016">음악</option>
								<option value="I000000017">공연/전시</option>
								<option value="I000000018">책</option>
								<option value="I000000019">사회문제해결</option>
								<option value="I000000020">기부/나눔</option>
								<option value="I000000021">친환경</option>
								<option value="I000000022">공유경제</option>
								<option value="I000000023">교육/육아</option>
							</select>
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="width: 200px; font-size: 0.7em">카테고리<br>카테고리에
						따른 분류를 선택해주세요.
					</td>
					<td>
						<div
							style="width: 450px; border: 1px solid #ddd; height: 40px; background: #f8f8f8; margin-left: 10px;">
							<select>
								<option value="">선택하세요</option>
								<option value="287">테크</option>
								<option value="288">패션/뷰티</option>
								<option value="289">푸드</option>
								<option value="290">디자인제품</option>
								<option value="291">웹툰</option>
								<option value="292">게임</option>
								<option value="293">출판</option>
								<option value="294">대중예술</option>
								<option value="295">공공프로젝트</option>
								<option value="296">여행</option>
								<option value="297">스포츠</option>
							</select>

						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="width: 200px; font-size: 0.7em">프로젝트 종료일<br>프로젝트
						종료일을 입력해주세요. 평균 모금기간은 약 45일입니다.<br>오픈 후 수정 불가하니 신중하게 선택해주세요.
					</td>
					<td>
						<div
							style="width: 450px; border: 1px solid #ddd; height: 40px; background: #f8f8f8; margin-left: 10px;">
							<input type="date">
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>

		</div>

		<div id="reward-info" class="input-form">
			<table style="width: 900px;">
				<tr>
					<td style="width: 700px;">
						<div id="reward"
							style="width: 640px; background: #f8f8f8; border: 1px solid #ddd; padding: 10px;">
							<table style="width: 620px;">
								<tr>
									<td style="width: 150px;">리워드#1</td>
									<td style="width: 100px;">금액</td>
									<td style="width: 150px;"><input type="text" size="15"></td>
									<td style="width: 50px;">원</td>
									<td style="width: 20px;">&nbsp;</td>
									<td style="width: 120px;">정렬순서</td>
									<td><input type="text" size="5" value="1"></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>리워드명</td>
									<td colspan="5"><input type="text" size="44"></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>상세설명</td>
									<td colspan="5"><textarea cols="44" rows="5"
											style="overflow: auto; width: 100%; resize: none"></textarea></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>배송조건</td>
									<td><input type="checkbox"><font size="0.8em">
											배송받을 주소가 필요합니다.</font></td>
									<td colspan="2">&nbsp;</td>
									<td>배송료</td>
									<td><input type="text" size="5"></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>제한수량</td>
									<td><input type="text" size="3"></td>
									<td colspan="2">&nbsp;</td>
									<td>배송일</td>
									<td><input type="text" style="width: 100%;"
										placeholder="날짜"></td>
								</tr>
							</table>
							<div align="center">
								<button class="btn btn-warning">추가하기</button>
							</div>
						</div>
					</td>
					<td></td>
				</tr>

			</table>

		</div>
		
		<!-- 스토리 내용 입력 화면 -->
		<div id="story-info" class="input-form">
			<table style="width: 900px;">
				<tr>
					<td style="width:200px;font-size:0.7em;">
						영상 등록하기<br>프로젝트에 우선 유튜브 혹은 비메오에 영상을 업로드해 주세요.<br>비메오는 해당 영상 URL을 바로 올려도 되지만 유튜브의 경우, 해당 영상 페이지 하단의 공유(Share) 버튼을 클릭하면 나오는 짧은 링크를 등록해 주세요.
					</td>
					<td style="width:500px;">
						<div style="width: 430px;height:130px; background: #f8f8f8; border: 1px solid #ddd; padding: 10px;margin-left:10px;">
							<input type="text" size="30"><button class="btn btn-primary btn-xs" style="margin-left:10px;">영상등록하기</button>
							<br>
							<div style="width:100px;height:60px;border:1px dashed #bbb;background:#f0f0f0;margin-top:15px;margin-left:30px;padding-top:15px;padding-left:25px;">VIDEO</div>
						</div>
					</td>
					<td style="width:200px;">
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td style="width:200px;font-size:0.7em;">
						영상 대체 이미지<br>위 영상을 등록하지 않는 경우, 프로젝트 주요 이미지를 등록해 주세요. 여러 장 등록하시면 슬라이드 형식으로 노출됩니다.
					</td>
					<td>
						<div  style="width: 430px;height:130px; background: #f8f8f8; border: 1px solid #ddd; padding: 10px;margin-left:10px;font-size:0.7em;">
							<div style="width:400px;border:1px solid #ddd">
								<input type="file" size="20">
							</div>
							<br>
							<div align="center">
								<button class="btn btn-primary btn-xs" style="margin-left:10px;">사진업로드</button>
							</div>
								
							<br>
							정렬이 바뀔 경우 하단 [저장] 버튼을 클릭하셔야만 변경된 순서가 반영됩니다.<br>(사이즈 : 630x400 pixel, 용량 : 2MB, 형식 : jpg, jpeg, gif, png)
						</div>
					</td>
					<td style="width:200px;">
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td rowspan="3" style="width:200px;font-size:0.7em;">
						핵심메시지<br>참여자들이 페이지를 열었을 때 가장 처음 보는 문장으로, 사람들이 이 문장을 읽고 “아~ 이게 어떤 프로젝트구나~” 라는 것을 알 수 있도록 작성해주세요. 3줄 이하로 작성되면 좋겠습니다. 너무 길지 않게 적어주세요.
					</td>
					<td>
						<div  style="width: 430px;height:60px; background: #f8f8f8; border: 1px solid #ddd; padding: 10px;margin-left:10px;font-size:0.7em;">
							<input type="text" size="64">
						</div>
					</td>
					<td style="width:200px;">
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="3">
						<div id="froala-editor" style="width:860px;max-height:500px;">
						</div>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">
						<p style="font-size:0.7em;">
							위험 요인과 해결방안<br>
							<br>
							기본으로 입력되어 있는 내용 중 해당 프로젝트에 맞게 하단 6가지를 수정해 주세요.<br>
							1) 완제품이 아닌 리워드의 발송은 펀딩결과 및 시기에 따라 배송 지연이 발생할 수 있다는 것에 대한 안내<br>
							2) 리워드 발송이 1달 이내 지연될 경우, 서포터분들에게 공지할 방법 (새소식, SMS 포함)<br>
							3) 리워드 발송이 1달 이상 지연될 경우, 서포터분들에게 제공할 혜택/서비스<br>
							4) 약 1달 정도의 리워드 지연을 사유로 펀딩 취소(환불)이 불가한 것에 대한 안내<br>
							5) 리워드 발송이 *달 이상 지연 시, 100% 환불 가능한 것에 대한 안내 및 환불 신청한 메이커 연락처/이메일<br>
							6) 해당 프로젝트의 리워드 교환/반품/AS 정책<br>
						</p>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" style="">
						<div style="width:650px;height:340px;padding:15px;border:1px solid #ddd;background:#f8f8f8;">
							<textarea style="overflow: auto; width: 100%; height:310px;resize: none;width;font-size:0.7em;">
§업체명/메이커명§은 펀딩해주신 서포터분들께 감사의 표시인 리워드 제공 일정을 준수하기 위해 최선을 다할 것을 약속합니다.
단, 펀딩을 받아야만 생산을 시작할 수 있는 크라우드펀딩 특성 및 생산과정에서의 예상치못한 상황으로 인하여 리워드 제공일이 다소 지연될 수 있는 점을 알려 드립니다.

약속된 발송일 (yyyy-mm-dd)으로부터 1달 이내 (yyyy-mm-dd) 리워드 제공이 지연될 경우
-리워드 제공 지연이 예상되는 시점에 즉시 새소식과 SMS으로 변경된 리워드 제공일을 알려 드립니다.
-단, 리워드 제공 지연 사유로 인한 펀딩 취소는 불가합니다.

약속된 발송일 (yyyy-mm-dd)으로부터 1달 이상 (yyyy-mm-dd) 리워드 제공이 지연될 경우
-리워드 제공 지연이 예상되는 시점에 즉시 새소식과 SMS으로 변경된 리워드 제공일을 알려 드립니다.
-§리워드금액§에 해당하는 §리워드명§에 해당하는 추가 리워드를 함께 보내드립니다.
-예상보다 리워드 제공이 많이 지연되었으므로 §메이커 이메일주소§ 으로 신청해주신 서포터에 한해 펀딩하신 금액의 100%를 본인의 계좌로 환불해 드립니다.

해당 프로젝트의 교환/반품/AS 정책은 다음과 같습니다.
-펀딩 기간에는 자유롭게 마이페이지에서 펀딩 취소 가능하지만,
펀딩 기간 이후, 단순 변심으로 인한 교환이나 환불은 불가합니다.
-리워드 수령 **일 이내 제품 하자로 인한 교환/반품/AS는 §메이커 이메일주소§으로 신청 가능합니다.
								
							</textarea>
						</div>
					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</div>
		

	</form>
	<br>
	<br>
	<div align="center">
		<button class="btn btn-warning">임시저장하기</button>
		&nbsp; &nbsp;
		<button class="btn btn-warning">다음단계로</button>
	</div>


</body>
</html>