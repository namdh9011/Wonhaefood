use ssafydb;


CREATE TABLE `food` (
  `code` int(11) NOT NULL,
  `name` text COLLATE utf8_bin,
  `supportpereat` int(11) DEFAULT NULL,
  `calory` double DEFAULT NULL,
  `carbo` double DEFAULT NULL,
  `protein` double DEFAULT NULL,
  `fat` double DEFAULT NULL,
  `sugar` double DEFAULT NULL,
  `natrium` double DEFAULT NULL,
  `chole` int(11) DEFAULT NULL,
  `fattyacid` double DEFAULT NULL,
  `transfat` int(11) DEFAULT NULL,
  `maker` text COLLATE utf8_bin,
  `material` text COLLATE utf8_bin,
  `img` text COLLATE utf8_bin,
  `allergy` text COLLATE utf8_bin,
  `count` int(11) DEFAULT NULL
);

ALTER TABLE food ADD CONSTRAINT pk_code PRIMARY KEY (code);

INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (1,'신라면큰사발',80,347.37,54.74,5.61,11.93,2.81,1087.72,0,5.61,0,'농심','육수맛조미베이스,소맥분(호주산,미국산),버섯풍미분말,감자전분(독일산),정백당,팜유(말레이시아산),변성전분,복합조미간장분말,난각칼슘,매운탕분말,정제염,정제염,비프조미페이스트,사골된장분말,비프조미분,이스트조미액,포도당,면류첨가알칼리제 ( 산도조절제 ),생고추조미분말,혼합제제 ( 산도조절제 ),칠리맛조미분,올리고녹차풍미액,양념구이조미분,비타민B₂,볶음양념분,수육조미분,호화감자전분,조미양념분,마늘추출물분말,후추가루,분말된장,5-리보뉴클레오티드이나트륨,양파풍미분,사골추출물분말,육수조미분말,양파조미베이스,호박산이나트륨,장국양념분말,다시마정미추출분말,매운맛조미분,고춧가루,분말카라멜 ( 카라멜색소 , 물엿분말 ),생강추출물분말,건표고버섯,건파,건청경채,조미건조홍고추','img/신라면큰사발.jpg','',6);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (2,'진라면컵매운맛',80,275.2,42.24,5.76,8.96,3.2,1139.2,0,3.2,0,'오뚜기','참맛매운육수분말,소맥분(미국산,호주산),변성전분,포도당,발효복합분,팜유(말레이시아산),진한감칠맛분,글루텐,숙성마늘맛분,정제소금,마늘양념분말,유화유지,난각분말,볶음마늘분,치킨추출농축액,백설탕,마늘시즈닝,간장분말,야채추출물,식용유지가공품,면류첨가알칼리제 ( 산도조절제 ),정제소금,비타민 B₂,효모조미분,칠리맛분말,녹차풍미유,전분,쇠고기간장분말,쇠고기향미분말,후추분말,고춧가루,구아검,조미아미노산분말,향미증진제,칠리추출물,고추농축소스,산도조절제,건파,조미쇠고기맛후레이크,건당근,건표고버섯,건조채심,건고추입자,[ 소맥분 ( 밀 ), 탈지대두 ( 대두 ), 유당 ( 우유 ), 난각분말 ( 계란 ), 땅콩단백 ( 땅콩 ), 돈골 ( 돼지고기 )]','img/진라면컵매운맛.jpg','대두,땅콩,우유,돼지고기',10);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (3,'큰컵삼양라면',80,272.7,42.88,4.99,8.9,2.24,940.54,0,4.48,0,'삼양식품','볶음면조미분말,소맥분(미국산,호주산),부대찌개베이스,전분(태국산),팜유,설탕,정제염,정제염,맛베이스에스,미감에스유,식물성간장분말,면류첨가알칼리제 ( 산도조절제 ),감자전분,양파엑기스,양념간장분,구아검,지미맛분말,비타민B₂,구연산,햄풍미분말,육수맛분말,녹차풍미유,김치조미분말,돈육풍미분말,볶음양념분말,혼합양념분말,진사골추출물분말,전지분유,팜유,부대찌개분말,쇠고기양념분말,저염풍미분에스,후추분,향미증진제,매운조미고추맛분,김치찌개풍미분말,베이컨향분말,햄베이스시즈닝,파프리카추출색소,마늘맛오일,조미콩단백,실당근,건청파,청경채,고단백건조유부,{ 소맥분 ( 밀 ), 탈지대두 ( 대두 ), 돼지고기 , 전지분유 ( 우유 ), 계란 , 땅콩 }','img/큰컵삼양라면.jpg','대두,땅콩,우유,돼지고기',1);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (4,'새우탕큰사발',80,372,48.16,7.68,15.76,0,1876,0,0,0,'농심','소맥분(호주산,미국산),감자전분(독일산),팜유,변성전분,식물성풍미유,난각칼슘,정제염,야채조미추출물,면류첨가알칼리제 ( 산도조절제 ),혼합제제 ( 산도조절제 ),올리고녹차풍미액,비타민B₂,새우베이스분말,정제염,정백당,육수베이스분말,매운맛분말,조미양념분,매운탕조미분말,호화옥수수분,육수맛조미베이스,오징어조미분말,오징어풍미분말,양념구이조미분,5-리보뉴클레오티드이나트륨,분말고추장,이스트풍미분,호박산이나트륨,복합조미간장분말,분말카라멜 ( 카라멜색소 , 물엿분말 ),다시마정미추출분말,혼합해물베이스분말,멸치조미분,향신조미분,후추가루,다시마표고조미분,수화검 ( 구아검 , 산탄검 ),후추추출물분말,어포,새우맛볼,건미역,건당근,건새우,새우 ( 중국산 58.1% , 캐나다산 41.0% , 국내산 0.9% )','img/새우탕큰사발.jpg','새우',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (5,'육개장큰사발면',80,273.45,42.47,5.24,9.31,1.75,936.73,0,4.65,0,'농심','육개장조미료,소맥분(호주산,미국산),팜유(말레이시아산),정제염,양념간장베이스,감자전분,변성전분,조미아미노산간장분말,정백당,식물성풍미유,물엿분말,난각칼슘,양념풍미분,정제염,볶음양념분,면류첨가알칼리제 ( 산도조절제 ),육수조미분말,비프양념분말,혼합제제 ( 산도조절제 ),간장조미액,마늘추출물분말,복합양념분말,구아검,올리고녹차풍미액,팜유조미분말,이스트풍미분,비타민B₂,후추가루,매운맛조미분,5-리보뉴클레오티드이나트륨,분말고추장,양파풍미분,수육조미분,호박산이나트륨,칠리풍미분말,복합조미간장분말,건파,계란스크램블,건조맛살어묵,소용돌이맛살','img/육개장큰사발면.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (6,'메로나',100,156.25,25,1.25,6.25,20,68.75,19,4.75,1,'빙그레','정제수,백설탕,데어리스프레드 (외국산:뉴질랜드,독일,호주),프락토올리고당,물엿,혼합탈지분유 ( 외국산 :네덜란드,아일랜드,독일),말티톨시럽,메론시럽 0.15% ( 메론 70% : 국산 ),정제염,로커스트콩검,셀룰로오스검,혼합제제 ( 구아검 , 로커스트콩검 , 카라기난 , 셀룰로오스검 , 유화제 ),치자청색소,심황색소,합성착향료 ( 메론향 )','img/메로나.jpg','',2);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (7,'누크바',100,274,25,3,18.3,17.33,65,0,0,0,'롯데제과','정제수,기타코코아가공품[야자유(수입산),백설탕,채종유(호주산),땅콩버터,혼합분유,코코아매스],백설탕,혼합분유(수입산;탈지분유,유청분말),기타올리고당 ( 물엿 , 이소말토올리고당 , 액상과당 ),땅콩(중국산),가공버터 ( 유크림 , 야자유 ),아이스혼합유 ( 야자유 80% , 팜유 20% ),혼합제제Ⅰ ( 구아검 , 로커스트콩검 , 카라기난 , 타마린드검 ),천연착향료 ( 바닐라향 ),유화제,합성착향료 ( 바닐라향 ),혼합제제Ⅱ ( 치자황색소 , 덱스트린 , 비트레드 )','img/N45누크바.jpg','땅콩',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (8,'비비빅',100,186.67,40,3.33,1.6,21.25,106.67,7,1.07,0,'빙그레','정제수,당통팥22%(중국산: 백설탕 , 팥 ),백설탕,물엿,팥분말(중국산),혼합탈지분유,데어리스프레드,액상과당,찰옥수수알파전분,유청분말,정제염,구아검,락색소,카라멜색소,합성착향료 ( 팥향 ),치자청색소','img/비비빅.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (9,'수박바',100,110.93,24.67,0.33,2.24,18.67,25.83,0,1.11,0,'롯데제과','정제수,백설탕,프락토올리고당,초코땅콩 ( 땅콩 ),폴리덱스트로스,말티톨시럽,아이스혼합유,유화제,혼합제제 ( 구아검 ( 대두 ), 카라기난 , 산도조절제 , 로커스트콩검 , 타마린드검 ),수박농축액 0.1% ( 고형분 65% ),합성착향료 ( 딸기향 , 멜론향 ),정제소금,혼합제제II ( 비트레드 , 덱스트린 , 치자황색소 ),비타민C,구연산,혼합제제III ( 치자청색소 , 치자황색소 , 덱스트린 )','img/수박바.jpg','대두,땅콩',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (10,'죠스바',100,113.33,28.4,0.04,0.09,20,0.68,0,0,0,'롯데제과','정제수,프락토올리고당,백설탕,기타올리고당 ( 물엿 , 이소말토올리고당 , 액상과당 ),딸기쨈3%(딸기;국산),구연산,오렌지농축액0.14%(고형분65%),합성착향료 ( 딸기향 , 오렌지향 ),혼합제제Ⅰ ( 카라기난 , 구아검 ( 대두 ), 산도조절제 , 로커스트콩검 , 타마린드검 ),혼합제제Ⅱ ( 구아검 , 카라기난 , 산도조절제 , 로커스트콩검 , 타마린드검 ),혼합제제Ⅲ ( 유화제 , 탄산칼슘 , 규소수지 ),비타민C,혼합제제Ⅳ ( 덱스트린 , 치자청색소 , 홍국적색소 , 치자황색소 ),혼합제제Ⅴ ( 비트레드 , 덱스트린 , 치자황색소 )','img/죠스바.jpg','대두',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (11,'서울우유바나나',200,340,44,10,14,40.44,170,40,8,0,'서울우유','원유 60.12%(국산),정제수,액상과당,정백당,유크림 2.93%(국산),탈지분유 2.143%,바나나농축과즙(바나나과즙 1%,이스라엘산),올리고당,합성착향료 ( 바나나향 )','img/서울우유바나나.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (12,'맛있는우유GT',200,280,20,12,16,18,200,60,9.6,0,'남양유업','1A등급 원유 ( 국산 ) 100% ( 세균수기준 )','img/맛있는우유GT.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (13,'칠성사이다',200,168.42,42.11,0,0,33.6,10.53,0,0,0,'롯데칠성음료','정제수,액상과당,백설탕,탄산가스,구연산,레몬라임향','img/칠성사이다.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (14,'비타500칼슘',200,172.9,43,0.09,0.06,44,143.84,0,0,0,'광동제약','정제수,액상과당,농축사과과즙 ( 당도 72Brix이상 , 뉴질랜드산 ),비타민C 0.5% ( 900% ),퓨라칼 (칼슘12%이상)0.05%,합성착향료 ( 드링크향 ),구연산,케이디비타 2800,구연산삼나트륨,펙틴,타우린,DL-사과산,오렌지추출물','img/비타500칼슘.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (15,'비타파워',200,100,24,0,0,12.55,60,0,0,0,'롯데제과','정제수,액상과당,비타민C,구연산,합성착향료 ( 드링크향 , 혼합과일향 ),구연산삼나트륨,효소처리스테비아,타우린,수크랄로스 ( 합성감미료 ),비타민B2인산에스테르나트륨','img/비타파워.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (16,'칸타타아메리카노',200,80,18.29,0,0,13.72,125.71,0,0,0,'롯데제과','칸타타원두커피추출액30%(에티오피아50%,콜롬비아30%,브라질20%),정제수,백설탕,합성착향료 ( 커피향 ),탄산수소나트륨,L-아스코르빈산나트륨','img/칸타타아메리카노.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (17,'칸타타프리미엄라떼',200,182.86,36.57,4.57,2.06,36.56,228.57,11,1.37,0,'롯데제과','칸타타원두커피추출액42%(에티오피아50%,콜롬비아30%,브라질20%),정제수,우유15%(국내산),백설탕,혼합분유 ( 탈지분유 , 유청분말 ),탄산수소나트륨,합성착향료 ( 커피향 , 우유향 ),유화제,L-아스코르빈산나트륨','img/칸타타프리미엄라떼.jpg','우유',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (18,'맥심티오피스위트아메리카노',200,70.4,17.6,0,0,16,52,0,0,0,'동서식품','맥심 에스프레소 커피추출액 ( 고형분 5.0%이상 ,커피원두:콜롬비아산60%,브라질산21%)12.6%,정제수,백설탕,탄산칼륨,합성착향료 ( 커피향 ),비타민C,자당지방산에스테르','img/맥심티오피스위트아메리카노.jpg','',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (19,'맥심티오피마스터라떼',200,156.4,26,3.2,4.4,26.2,72.73,16,3.2,0,'동서식품','정제수,우유 (국내산)15%,맥심 에스프레소 커피추출액 ( 고형분 5.0%이상 ,커피원두:콜롬비아산60%,브라질산21%)12.6%,백설탕,유크림,탈지분유,탄산칼륨,자당지방산에스테르,비타민C','img/맥심티오피마스터라떼.jpg','우유',0);
INSERT INTO `food` (`code`,`name`,`supportpereat`,`calory`,`carbo`,`protein`,`fat`,`sugar`,`natrium`,`chole`,`fattyacid`,`transfat`,`maker`,`material`,`img`,`allergy`,`count`) VALUES (20,'아카페라아메리카노',200,58.33,13.33,0.83,0,11.68,91.67,0,0,0,'빙그레','정제수,콜드브루커피추출액7%(고형분3%이상/커피원두:에티오피아40%,콜롬비아30%,브라질30%),백설탕,에스프레소커피추출액 1.54% ( 고형분 34%이상 /커피원두:브라질),탄산수소나트륨,아스코르빈산나트륨,천연커피향','img/아카페라아메리카노.jpg','',0);



CREATE TABLE `member` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `pw` varchar(20) COLLATE utf8_bin NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `phone` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `allergy` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
);

create table board(
	id varchar(20) not null, 
    num int primary key auto_increment, 
    name varchar(20) not null, 
    wdate datetime, 
    title varchar(20) not null, 
    content varchar(1000), 
    count int default 0
);

insert into board values('admin', null, "admin", sysdate(), "첫번째", "수고했다", 0);

create table myfood(
	num int(7) AUTO_INCREMENT,
    id varchar(20),
	code int(11),
    count int(11),
    constraint fk_id foreign key(id) references member(id),
    constraint fk_code foreign key(code) references food(code) on delete cascade,
    CONSTRAINT PRIMARY KEY(num)
);

create table QnA(
	id varchar(20) not null, 
    num int primary key auto_increment, 
    name varchar(20) not null, 
    wdate datetime, 
    title varchar(100) not null, 
    content varchar(1000),
    comment varchar(1000),
    count int default 0
);

insert into QnA values('admin', null, "admin", sysdate(), "첫번째", "수고했다","첫번째 댓글", 0);

create table mymenuweek(
	num int primary key auto_increment, 
    id varchar(100) not null,
    month int not null, 
    week int not null,  
    meal int not null,
    mon varchar(1000),
    tue varchar(1000),
    wed varchar(1000),
    thu varchar(1000),
    fri varchar(1000),
    sat varchar(1000),
    sun varchar(1000),
    comment varchar(1000)
);

insert into mymenuweek (id, month, week, mon, tue, wed, thu, fri, sat, sun, comment) values("admin", 11, 2, "라면","된장찌개","커피","라면","메로나","간장게장","자장면",null);

create table admpage(
	num int primary key auto_increment, 
    code int not null,
    id varchar(100) not null,
    maker varchar(1000),
    material varchar(1000),
    comment varchar(1000),
    img varchar(1000)
);

create table lucky(
	num int primary key auto_increment,
    comment varchar(1000) not null
);

insert into lucky(num, comment) values(1, "마음의 소리 : 좋아한다고 이야기할까?");
insert into lucky(num, comment) values(2, "오늘의 운세 : 기다렸던 소식이 들립니다.");
insert into lucky(num, comment) values(3, "오늘의 운세 : 사랑과 존경을 받는 날입니다.");
insert into lucky(num, comment) values(4, "오늘의 운세 : 어려울수록 도와야 합니다.");
insert into lucky(num, comment) values(5, "마음의 소리 : 친구야 보고싶다.");
insert into lucky(num, comment) values(6, "오늘의 운세 : 지나친 친절에 주의하세요.");
insert into lucky(num, comment) values(7, "마음의 소리 : 오늘은 확 질러버리자");

create table profile(
	num int primary key auto_increment,
    id varchar(20),
    img varchar(1000),
    fortune varchar(1000)
);


alter table profile
add constraint profile_id_fk foreign key(id)
references member(id) ON DELETE CASCADE;