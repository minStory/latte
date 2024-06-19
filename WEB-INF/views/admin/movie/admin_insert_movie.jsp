<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header" />

	<main class="admin-insert-movie">
		<div class="main-container">
			<h2>영화 등록</h2>

			<div class="admin-insert-movie-title">
				<h4>영화 정보 입력</h4>
			</div>

			<form method="post" action="admin_insert_movie_ok"
				enctype="multipart/form-data">
				<ul class="admin-insert-movie-content">

					<li><label><span>제목</span><input type="text"
							name="title" placeholder="제목를 입력해주세요." required></label></li>
					<li><label><span>장르</span><input type="text"
							name="genre" placeholder="장르를 입력해주세요." required></label></li>
					<li><label><span>상영시간</span><input type="text"
							name="screen_time" placeholder="상영시간(분)을 입력해주세요." required></label></li>
					<li><label><span>감독</span><input type="text"
							name="director" placeholder="감독명을 입력해주세요." required></label></li>
					<li><label><span>배우</span><input type="text"
							name="actor" placeholder="배우명을 입력해주세요." required></label></li>
					<li><label><span>제한연령</span><select name="limit_age">
								<option value="0">All</option>
								<option>12</option>
								<option>15</option>
								<option>19</option>
						</select></label></li>
					<li class="admin-insert-movie-release-date"><label><span>개봉일</span>
							<select class="release-year" name="release_year"
							onchange="return updateReleaseMonth();">
						</select><select class="release-month" name="release_month"
							onchange="return updateReleaseDay();">
						</select><select class="release-day" name="release_day">
						</select></label></li>
					<li><label><span>포스터</span><input type="file"
							name="poster" placeholder="사진 파일을 첨부해주세요." required></label></li>
					<li><label><span>내용</span> <textarea name="content"
								placeholder="내용을 입력해주세요." required></textarea></label></li>
				</ul>

				<div class="admin-insert-movie-button">
					<input type="reset" value="취소"> <input type="submit"
						value="등록">
				</div>
			</form>
		</div>
	</main>

	<jsp:include page="/WEB-INF/include/footer.jsp" />
</body>
</html>