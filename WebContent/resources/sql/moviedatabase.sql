select * from movies;


INSERT INTO movies VALUES('LALALAND','로맨스,드라마',10000, '엠마스톤,라이언 고슬링','데이미언 셔젤', '전체관람가', 'hollywood', '2016-12-07', 'lala.PNG',200);
INSERT INTO movies VALUES('DarkNight','액션,드라마',10000, '크리스찬 베일','크리스토퍼 놀란', '12세관람가', 'hollywood', '2008-08-06', 'dark.PNG',174);
INSERT INTO movies VALUES('Social Network','드라마',10000, '제시 아이젠버그,앤드류 가필드','데이빗 핀처', '15세관람가', 'hollywood', '2010-11-18', 'social.PNG',182);
INSERT INTO movies VALUES('Fast&Furious9','액션',10000, '빈 디젤,존 시나','저스틴 린', '12세관람가', 'hollywood', '2021-05-19', 'fast.PNG',200);
INSERT INTO movies VALUES('Cruella','드라마',10000, '엠마 스톤,엠마 톰슨','크레이그 질레스피', '12세관람가', 'hollywood', '2021-05-26', 'cruella.PNG',162);
INSERT INTO movies VALUES('The Conjuring3','공포,스릴러',10000, '패트릭 윌슨,베라 파미가','마이클 차베즈', '15세관람가', 'hollywood', '2021-06-03', 'conjuring.PNG',142);


CREATE TABLE IF NOT EXISTS movies(
	m_name VARCHAR(20) NOT NULL,
	m_genre VARCHAR(20) NOT NULL,
	m_price  INTEGER NOT NULL,
	m_actor VARCHAR(20) NOT NULL,
   	m_director VARCHAR(20) NOT NULL,
	m_limit VARCHAR(20) NOT NULL,
	m_manufacturer VARCHAR(20) NOT NULL,
	m_date VARCHAR(20) NOT NULL,
	m_filename  VARCHAR(20) NOT NULL,
	m_sit INTEGER NOT NULL,
	PRIMARY KEY (m_name)
)
default CHARSET=utf8;

update movies set m_sit=26 where m_name="Cruella";
update movies set m_sit=22 where m_name="DarkNight";
update movies set m_sit=58 where m_name="Fast&Furious9";
update movies set m_sit=117 where m_name="Social Network";
update movies set m_sit=12 where m_name="The Conjuring3";
update movies set m_sit=7 where m_name="LALALAND";

update movies set m_filename="car.PNG" where m_name="Fast&Furious9";



CREATE TABLE IF NOT EXISTS soons(
	m_name VARCHAR(40) NOT NULL,
	m_genre VARCHAR(20) NOT NULL,
	m_actor VARCHAR(20) NOT NULL,
   	m_director VARCHAR(20) NOT NULL,
	m_limit VARCHAR(20) NOT NULL,
	m_manufacturer VARCHAR(20) NOT NULL,
	m_date VARCHAR(20) NOT NULL,
	m_filename  VARCHAR(20) NOT NULL,
	PRIMARY KEY (m_name)
)default CHARSET=utf8;

select * from soons;
INSERT INTO soons VALUES('Eternals','액션,SF','안젤리나졸리, 마동석','클로이 자오', '전체관람가', 'hollywood', '2021-11', 'eternals.PNG');
INSERT INTO soons VALUES('Black Widow','액션','스칼렛 요한슨, 플로렌스 퓨','케이트 쇼트랜드', '12세관람가', 'hollywood', '2021-07-07', 'black.PNG');
INSERT INTO soons VALUES('Venom-Let there be carnage','액션,스릴러','톰 하디,우디 헤럴슨','엔디 서키스', '미정', 'hollywood', '2021-11', 'venom.PNG');
INSERT INTO soons VALUES('007-No Time To Die','액션,드라마','다니엘 크레이그,아나 디 아르마스','캐리 후쿠나가', '12세관람가', 'hollywood', '2021-11', '007.PNG');
INSERT INTO soons VALUES('Suicide Squad','액션,SF','마고로비,이드리스 엘바,존 시나','제임스 건', '12세관람가', 'hollywood', '2021-8', 'suicide.PNG');
INSERT INTO soons VALUES('Spiderman-No way Home','액션,SF','톰 홀랜드,앤드류 가필드, 토비 맥과이어','존 왓츠', '12세관람가', 'hollywood', '2021-12', 'spider.PNG');

