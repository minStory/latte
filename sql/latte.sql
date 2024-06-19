-- 회사 정보 테이블
create table company(
	company_business_no varchar(50) primary key,      -- 사업자 번호
    company_name varchar(50) not null,               -- 회사명
    company_ceo_name varchar(50) not null,           -- 대표자
    company_address varchar(500) not null,            -- 주소
    company_phone varchar(50) not null,               -- 전화번호
    company_anniversary date not null               -- 설립일
);

-- 관리자 정보 테이블
create table admin(
	admin_no varchar(50) primary key,               -- 관리자 번호
    admin_id varchar(50) not null,                  -- 관리자 ID
    admin_pwd varchar(50) not null,                  -- 관리자 비밀번호
    admin_name varchar(50) not null,               -- 관리자 이름
    admin_job varchar(50) not null,                  -- 직책
    admin_phone varchar(50) not null               -- 전화번호
);

-- 회원 정보 테이블
create table member(
	member_no varchar(50) primary key,               -- 회원 번호
    member_id varchar(50) not null,                  -- 회원 ID
    member_pwd varchar(50) not null,               -- 회원 비밀번호
    member_name varchar(50) not null,               -- 회원 이름
    member_phone varchar(50) not null,               -- 전화번호
    member_email varchar(50),                     -- 이메일
    member_mileage int default 0,                  -- 마일리지
    member_grade varchar(50) default "VIP",          -- 등급
    member_signup_date datetime default now()         -- 가입일
);

-- 영화 정보 테이블
create table movie(
	movie_no int primary key,                     -- 영화 번호
    movie_title varchar(500) not null,               -- 영화 이름
    movie_genre varchar(50) not null,               -- 장르
    movie_screen_time int not null,                  -- 상영 시간
    movie_director varchar(50) not null,            -- 감독
    movie_actor varchar(50) not null,               -- 주연 배우
    movie_limit_age int not null,					-- 영화 나이제한
    movie_release_date date not null,               -- 개봉일
    movie_poster varchar(2000),            			-- 포스터(사진)
    movie_content varchar(2000)                   -- 영화 설명
);

-- 상영 정보 테이블
create table screening(
	screening_no int primary key,                  -- 상영 정보 고유 번호
    screening_region varchar(50) not null,            -- 상영 지역
    screening_location varchar(50) not null,         -- 상영 지점
    screening_movie_no int not null,               -- 영화 번호
    screening_movie_title varchar(500) not null,      -- 영화 이름
    screening_movie_start_date date not null,         -- 영화 시작 날짜
    screening_movie_start_time time not null,         -- 영화 시작 시간
    screening_hall int not null,                  -- 상영관
    screening_seat_status boolean not null default true   -- 좌석 유무
);

-- 상영 정보의 좌석 정보 테이블
create table seat(
	seat_no int primary key,                     -- 상영 정보 고유 번호(참조)
    seat_booking_count int,                        -- 좌석 선택 수
    seat_booking_status varchar(2000),               -- 좌석 예약 상태
    
    foreign key (seat_no) references screening (screening_no) on update cascade
);

-- 예매 내역 테이블
create table ticketing_history(
	ticketing_history_no int primary key,                     -- 예매 내역 번호
    ticketing_history_member_no varchar(50) not null,            -- 예매자 번호
    ticketing_history_movie_no int not null,            	-- 영화 번호
    ticketing_history_movie_title varchar(500) not null,         -- 영화 이름
    ticketing_history_movie_start_date date not null,            -- 영화 시작 날짜
    ticketing_history_movie_start_time time not null,            -- 영화 시작 시간
    ticketing_history_region varchar(50) not null,				-- 지역
    ticketing_history_location varchar(50) not null,			-- 상영관
    ticketing_history_seat varchar(50) not null,				-- 좌석
    ticketing_history_payment_amount int not null,               -- 결제 금액
    ticketing_history_payment_method varchar(50) not null,         -- 결제 방식
    ticketing_history_booking_count int not null,               -- 예매 수량
    ticketing_history_booking_date datetime not null default now()   -- 예매 일시
);

-- 상영 후기 테이블
create table movie_review(
	movie_review_no int primary key,                  -- 상영 후기 글번호
    movie_review_writer_no varchar(50) not null,         -- 작성자 회원번호
    movie_review_writer_id varchar(50) not null,         -- 작성자 ID
    movie_review_movie_no int not null,                  -- 영화 번호
    movie_review_movie_title varchar(500) not null,         -- 영화 이름
    movie_review_content varchar(2000) not null,         -- 후기 내용
    movie_review_created_date datetime default now(),      -- 작성 일시
    movie_review_recommend int default 0,				-- 리뷰 추천 수
    movie_review_rating int default 0					-- 평점
);

-- 내가 선택한 영화관 (최대 3개)
create table my_theater(
	my_theater_no int primary key,
    my_theater_member_no varchar(50),
    my_theater_location varchar(50)
);

-- 이벤트 게시판 테이블
create table event_board(
	event_board_no int primary key,                     -- 이벤트 글번호
    event_board_writer_no varchar(50) not null,            -- 작성자 이름(관리자)
    event_board_writer_id varchar(50) not null,            -- 작성자 ID
    event_board_title varchar(500) not null,            -- 글 제목
    event_board_content varchar(2000) not null,            -- 글 내용
	event_board_file varchar(2000),                     -- 첨부 파일
    event_board_created_date datetime default now(),      -- 작성 일시
    event_board_updated_date datetime,                  -- 수정 일시
    event_board_hit int default 0                     -- 조회수
);
 -- 공지사항 게시판 테이블
create table notice_board(
	notice_board_no int primary key,                  -- 공지사항 글번호
    notice_board_writer_no varchar(50) not null,         -- 작성자 이름(관리자)
    notice_board_writer_id varchar(50) not null,         -- 작성자 ID
    notice_board_title varchar(500) not null,            -- 글 제목
    notice_board_content varchar(2000) not null,         -- 글 내용
    notice_board_file varchar(2000),                  -- 첨부 파일
    notice_board_created_date datetime default now(),      -- 작성 일시
    notice_board_updated_date datetime,                  -- 수정 일시
    notice_board_hit int default 0                     -- 조회수
);

-- 문의 내역 테이블
create table inquiry_history(
	inquiry_history_no int primary key,                  -- 문의 내역 글번호
    inquiry_history_writer_no varchar(50) not null,         -- 작성자 이름(회원넘버)
    inquiry_history_writer_id varchar(50) not null,         -- 작성자 ID
    inquiry_history_type_etc varchar(200) not null,         -- 영화 분류선택 (06/12추가)
    inquiry_history_type varchar(50) not null,            -- 문의 유형
    inquiry_history_title varchar(500) not null,         	-- 글 제목
    inquiry_history_content varchar(2000) not null,         -- 글 내용
	inquiry_history_file varchar(2000),                  	-- 첨부 파일
    inquiry_history_customer_name varchar(50) not null,    -- 고객 이름(06/12추가)
    inquiry_history_phone varchar(50) not null,            -- 고객 연락처(06/12추가)
    inquiry_history_email varchar(50) not null,           -- 고객 이메일(06/12추가)
    inquiry_history_created_date datetime default now()      -- 작성 일시
);

insert into admin values("A001", "admin01", "1234", "권용진", "ceo", "(SKT)010-1234-5678");
insert into admin values("A002", "admin02", "1234", "이동훈", "manager", "(KT)010-2345-6789");
insert into admin values("A003", "admin03", "1234", "정동화", "manager", "(LGU+)010-3456-7890");
insert into admin values("A004", "admin04", "1234", "박성민", "manager", "(LGU+)010-4567-8900");

insert into member values("M20240618001","member1","1234","이용화","(LGU+)010-1111-2222","wait01@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618002","member2","1234","이동민","(SKT)010-2222-2222","wait02@gmail.com","0","VIP","2024-06-18 09:07:03");
insert into member values("M20240618003","member3","1234","박용민","(KT)010-3333-3333","wait03@gmail.com","0","VIP","2024-06-18 09:07:47");
insert into member values("M20240618004","member4","1234","박성민","(SKT)010-1211-1004","wait04@gmail.com","50000","PLATINUM","2024-06-18 09:02:51");
insert into member values("M20240618005","member5","1234","이동훈","(LGU+)010-7777-7777","wait05@gmail.com","50000","PLATINUM","2024-06-18 09:02:51");
insert into member values("M20240618006","member6","1234","권용진","(KT)010-4131-1004","wait06@gmail.com","50000","PLATINUM","2024-06-18 09:02:51");
insert into member values("M20240618007","member7","1234","정동화","(SKT)010-1251-1004","wait07@gmail.com","50000","PLATINUM","2024-06-18 09:02:51");
insert into member values("M20240618008","member8","1234","이동진","(SKT)010-9611-1004","wait08@gmail.com","50000","PLATINUM","2024-06-18 09:02:51");
insert into member values("M20240618009","member9","1234","권성화","(SKT)010-1281-1004","wait09@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618010","member10","1234","박성훈","(LGU+)010-1421-1004","wait10@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618011","member11","1234","이용훈","(KT)010-1521-1004","wait11@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618012","member12","1234","권오성","(LGU+)010-1891-1004","Garfield@gmail.com","30000","GOLD","2024-06-18 09:02:51");
insert into member values("M20240618013","member13","1234","김수한무","(LGU+)010-1244-1004","wait13@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618014","member14","1234","길호성","(SKT)010-1252-1004","wait14@gmail.com","30000","GOLD","2024-06-18 09:02:51");
insert into member values("M20240618015","member15","1234","염범배","(KT)010-8888-8888","wait15@gmail.com","999000","PLATINUM","2024-06-18 09:02:51");
insert into member values("M20240618016","member16","1234","이솔","(LGU+)010-6635-1004","wait16@gmail.com","30000","GOLD","2024-06-18 09:02:51");
insert into member values("M20240618017","member17","1234","이재성","(KT)010-1634-1004","wait17@gmail.com","30000","GOLD","2024-06-18 09:02:51");
insert into member values("M20240618018","member18","1234","구연서","(SKT)010-9799-1004","wait18@gmail.com","30000","GOLD","2024-06-18 09:02:51");
insert into member values("M20240618019","member19","1234","이찬우","(LGU+)010-9587-1004","wait19@gmail.com","30000","GOLD","2024-06-18 09:02:51");
insert into member values("M20240618020","member20","1234","천재희","(LGU+)010-1848-1004","wait20@gmail.com","30000","GOLD","2024-06-18 09:02:51");
insert into member values("M20240618021","member21","1234","최유경","(SKT)010-2424-1004","wait21@gmail.com","30000","GOLD","2024-06-18 09:02:51");
insert into member values("M20240618022","member22","1234","신세경","(LGU+)010-6664-1004","wait22@gmail.com","10000","VVIP","2024-06-18 09:02:51");
insert into member values("M20240618023","member23","1234","문근영","(LGU+)010-5545-1004","wait23@gmail.com","10000","VVIP","2024-06-18 09:02:51");
insert into member values("M20240618024","member24","1234","장동건","(KT+)010-1663-1004","wait24@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618025","member25","1234","강동원","(SKT)010-5541-1004","wait25@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618026","member26","1234","원빈","(LGU+)010-5242-1004","wait26@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618027","member27","1234","김태리","(SKT)010-5335-1004","wait27@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618028","member28","1234","김태희","(LGU+)010-5222-1004","wait28@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618029","member29","1234","박찬욱","(LGU+)010-7554-1004","wait29@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618030","member30","1234","봉준호","(SKT)010-6554-1004","wait30@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618031","member31","1234","강하늘","(LGU+)010-7877-1004","wait31@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618032","member32","1234","탕웨이","(SKT)010-7908-1004","wait32@gmail.com","10000","VVIP","2024-06-18 09:02:51");
insert into member values("M20240618033","member33","1234","박해일","(LGU+)010-8902-1004","wait33@gmail.com","10000","VVIP","2024-06-18 09:02:51");
insert into member values("M20240618034","member34","1234","최민식","(LGU+)010-6436-1004","wait34@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618035","member35","1234","김고은","(SKT)010-6555-1004","wait35@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618036","member36","1234","유해진","(LGU+)010-6636-1004","wait36@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618037","member37","1234","조진웅","(SKT)010-7762-1004","wait37@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618038","member38","1234","마동석","(LGU+)010-7111-1004","wait38@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618039","member39","1234","유지태","(KT)010-3515-1004","wait39@gmail.com","0","VIP","2024-06-18 09:02:51");
insert into member values("M20240618040","member40","1234","박지환","(LGU+)010-4552-1004","wait40@gmail.com","0","VIP","2024-06-18 09:02:51");

-- 공지사항
insert into notice_board values(1, "A001", "admin01", "공지사항 example1", "안녕하세요. 공지사항1입니다.", null, default, null, default);
insert into notice_board values(2, "A002", "admin02", "공지사항 example2", "안녕하세요. 공지사항2입니다.", null, default, null, default);
insert into notice_board values(3, "A003", "admin03", "공지사항 example3", "안녕하세요. 공지사항3입니다.", null, default, null, default);
insert into notice_board values(4, "A004", "admin04", "공지사항 example4", "안녕하세요. 공지사항4입니다.", null, default, null, default);
insert into notice_board values(5, "A001", "admin01", "공지사항 example5", "안녕하세요. 공지사항5입니다.", null, default, null, default);
insert into notice_board values(6, "A002", "admin02", "공지사항 example6", "안녕하세요. 공지사항6입니다.", null, default, null, default);
insert into notice_board values(7, "A003", "admin03", "공지사항 example7", "안녕하세요. 공지사항7입니다.", null, default, null, default);
insert into notice_board values(8, "A004", "admin04", "공지사항 example8", "안녕하세요. 공지사항8입니다.", null, default, null, default);
insert into notice_board values(9, "A001", "admin01", "공지사항 example9", "안녕하세요. 공지사항9입니다.", null, default, null, default);
insert into notice_board values(10, "A002", "admin02", "공지사항 example10", "안녕하세요. 공지사항10입니다.", null, default, null, default);
insert into notice_board values(11, "A003", "admin03", "공지사항 example11", "안녕하세요. 공지사항11입니다.", null, default, null, default);

-- 현재상영작
insert into movie values("1","애비게일","호러","120","맷 베티넬리-올핀","알리샤 위어", 19,"2024-06-01","1/poster.png","101 영화 설명란입니다");
insert into movie values("2","챌린저스","로맨스, 코미디","123","루카 구아다니노","젠데이아", 15,"2024-06-01","2/poster.png","102 영화 설명란입니다");
insert into movie values("3","파묘","오컬트, 스릴러","130","장재현","최민식", 15,"2024-06-01","3/poster.png","103 영화 설명란입니다");
insert into movie values("4","쿵푸팬더4","애니메이션","116","마이클 미첼","잭 블랙", 0,"2024-06-01","4/poster.png","104 영화 설명란입니다");
insert into movie values("5","퓨리오사: 매드맥스 사가","아포칼립스","130","조지 밀러","안야 테일러조이", 15,"2024-06-01","5/poster.png","105 영화 설명란입니다");
insert into movie values("6","목소리의 형태","애니메이션","110","야마다 나오코","하야미 사오리", 0,"2024-06-01","6/poster.png","106 영화 설명란입니다");
insert into movie values("7","남은 인생 10년","로맨스, 드라마","120","후지이 미치히토","코마츠 나나", 12,"2024-06-01","7/poster.png","107 영화 설명란입니다");
insert into movie values("8","청춘 18X2 너에게로 이어지는 길","로맨스","132","후지이 미치히토","키요하라 카야", 12,"2024-06-01","8/poster.png","108 영화 설명란입니다");
insert into movie values("9","극장판 하이큐 쓰레기장의 결전","애니메이션","106","미츠나카 스스무","마츠시타 케이코", 0,"2024-06-01","9/poster.png","109 영화 설명란입니다");
insert into movie values("10","포켓몬스터: 성도지방 이야기, 최종장","애니메이션","102","유아마 쿠니히코","잠만보", 0,"2024-06-01","10/poster.png","110 영화 설명란입니다");
insert into movie values("11","가필드 더 무비","애니메이션","110","마이크 딘달","크리스 프랫", 0,"2024-06-01","11/poster.png","111 영화 설명란입니다");
insert into movie values("12","혹성탈출 새로운 시대","액션","118","웨스 볼","케빈 듀랜드", 12,"2024-06-01","12/poster.png","112 영화 설명란입니다");
insert into movie values("13","그녀가 죽었다","스릴러","115","김세휘","변요한", 15,"2024-06-01","13/poster.png","113 영화 설명란입니다");
insert into movie values("14","스텔라","히스토리, 드라마","123","킬리언 리드호퍼","폴라 비어", 15,"2024-06-01","14/poster.png","114 영화 설명란입니다");
insert into movie values("15","스턴트맨","액션, 코미디","120","데이비드 리치","라이언 고슬링", 15,"2024-06-01","15/poster.png","115 영화 설명란입니다");
-- 상영예정작
insert into movie values("16","설계자","스릴러","116","이요섭","강동원", 15,"2024-08-01","16/poster.png","116 영화 설명란입니다");
insert into movie values("17","나쁜 녀석들:라이드 오어다이","코미디","123","아딜 엘아르비","윌 스미스", 17,"2024-08-01","16/poster.png","117 영화 설명란입니다");
insert into movie values("18","찬란한 내일로","코미디, 드라마","130","난니 모레티","난니모레티", 12,"2024-08-01","18/poster.png","118 영화 설명란입니다");
insert into movie values("19","오늘부터 댄싱퀸","어린이, 드라마","92","오로라 고시","벨라", 0,"2024-08-01","19/poster.png","119 영화 설명란입니다");
insert into movie values("20","드림 시나리오","코미디, 호러","102","크리스토페르 보르글리","니콜라스 게이지", 15,"2024-08-01","20/poster.png","120 영화 설명란입니다");
insert into movie values("21","프렌치 수프","드라마, 히스토리","135","트란 안훙","쥘리에트 비노슈", 12,"2024-08-01","21/poster.png","121 영화 설명란입니다");
insert into movie values("22","인사이드 아웃2","애니메이션","96","켈시 만","에미 폴러", 0,"2024-08-01","22/poster.png","122 영화 설명란입니다");
insert into movie values("23","존 오브 인터레스트","히스토리,전쟁","105","조나단 글레이저","산드라 휠러", 12,"2024-08-01","23/poster.png","123 영화 설명란입니다");
insert into movie values("24","노 웨이 업","액션","106","클라우디오 파","소피 맥킨토시", 15,"2024-08-01","24/poster.png","124 영화 설명란입니다");
insert into movie values("25","퍼펙트 데이즈","드라마","118","빔 벤더스","야쿠쇼 코지", 12,"2024-08-01","25/poster.png","125 영화 설명란입니다");
insert into movie values("26","프리실라","드라마, 음악","110","소피아 코폴라","제이콥 엘로디", 15,"2024-08-01","26/poster.png","126 영화 설명란입니다");
insert into movie values("27","양치기","스릴러","118","손경원","손수현", 15,"2024-08-01","27/poster.png","127 영화 설명란입니다");
insert into movie values("28","언더 더 씨","애니메이션","71","에반 트라멜","에이프릴 로즈", 0,"2024-08-01","28/poster.png","128 영화 설명란입니다");
insert into movie values("29","아침이 오면 공허해진다","드라마","123","이시바시 유호","카라타 에리카", 12,"2024-08-01","29/poster.png","129 영화 설명란입니다");
insert into movie values("30","창가의 토토","애니메이션","80","야쿠와 신노스케","오구리 슌", 0,"2024-08-01","30/poster.png","130 영화 설명란입니다");

insert into movie_review values("1","308751","jungdonghwa","101","아비게일","너무 무서워서 악몽 꿈꼬또","2024-05-31",default,default);
insert into movie_review values("2","308651","kimdonghwa","101","아비게일","너무 무서워서 귀신 꿈꼬또","2024-06-01",default,default);
insert into movie_review values("3","308251","leedonghwa","101","아비게일","너무 무서워서 눈물나또","2024-06-02",default,default);
insert into movie_review values("4","308351","parkdonghwa","101","아비게일","너무 무서워서 팝콘쏟았또","2024-06-03",default,default);

SET SQL_SAFE_UPDATES = 0;