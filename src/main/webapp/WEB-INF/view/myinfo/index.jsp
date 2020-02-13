<%@ page contentType="text/html; charset=utf-8" %>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title %></title>
<%@ include file="/WEB-INF/view//include/headHtml.jsp" %>
</head>
<body>
<div id="boardWrap" class="bbs">
	<div class="pageTitle">
		<h2>프로필</h2>
	</div>
	<!--//pageTitle-->
	<div class="write">
		<table>
			<colgroup>
				<col style="width:150px"/>
				<col style="width:*"/>
				<col style="width:150px"/>
				<col style="width:*"/>
			</colgroup>
			<tbody>
				<tr>
					<th>이름</th>
					<td>정태기</td>
					<th>나이</th>
					<td>
						30세
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>010-5702-8206
					</td>
					<th>이메일</th>
					<td>taegi900@gmail.com
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan="3">
						서울시 구로구 고척동 57-14 202호
					</td>
				</tr>
				<tr>
					<th rowspan="2">학력</th>
					<td colspan="3">
						경기글로벌통상 고등학교
					</td>
				</tr>
				<tr>
					<td colspan="3">
						한신 대학교 국제경제학 과 (부) 컴퓨터공학 과
					</td>
				</tr>
				<tr>
					<th rowspan="2">이력</th>
					<td colspan="3">
						경동물류(주) 회사 합동전산 실 (1년 2개월) - 전산업무
					</td>
				</tr>
				<tr>
					<td colspan="3">
						
					</td>
				</tr>
				<tr>
					<th rowspan="2">자격증</th>
					<td colspan="3">
						워드프로세서 1급, 컴퓨터활용능력 3급
					</td>
				</tr>
				<tr>
					<td colspan="3">
						정보기기운용기능사
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<!--//boardWrap-->
</body>
</html>