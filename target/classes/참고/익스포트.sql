--------------------------------------------------------
--  파일이 생성됨 - 일요일-6월-06-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ACTORINFO
--------------------------------------------------------

  CREATE TABLE "SPRING"."ACTORINFO" 
   (	"SN" NUMBER(*,0), 
	"ACTOR" VARCHAR2(50 BYTE), 
	"MOVIECODE" VARCHAR2(20 BYTE), 
	"PROFILE" VARCHAR2(500 BYTE), 
	"PHOTOLINK" VARCHAR2(200 BYTE), 
	"GENGER" VARCHAR2(2 BYTE), 
	"AGE" VARCHAR2(10 BYTE), 
	"CONTURY" VARCHAR2(20 BYTE), 
	"DIRECTORAT" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPRING"."ACTORINFO"."SN" IS '순번';
   COMMENT ON COLUMN "SPRING"."ACTORINFO"."ACTOR" IS '배우';
   COMMENT ON COLUMN "SPRING"."ACTORINFO"."MOVIECODE" IS '영화코드';
   COMMENT ON COLUMN "SPRING"."ACTORINFO"."PROFILE" IS '자기소개';
   COMMENT ON COLUMN "SPRING"."ACTORINFO"."PHOTOLINK" IS '사진';
   COMMENT ON COLUMN "SPRING"."ACTORINFO"."GENGER" IS '성별';
   COMMENT ON COLUMN "SPRING"."ACTORINFO"."AGE" IS '나이';
   COMMENT ON COLUMN "SPRING"."ACTORINFO"."CONTURY" IS '국적';
   COMMENT ON COLUMN "SPRING"."ACTORINFO"."DIRECTORAT" IS '감독여부';
   COMMENT ON TABLE "SPRING"."ACTORINFO"  IS '배우정보';
--------------------------------------------------------
--  DDL for Table MOVIEREVIEW
--------------------------------------------------------

  CREATE TABLE "SPRING"."MOVIEREVIEW" 
   (	"SN" NUMBER(*,0), 
	"MOVIENM" VARCHAR2(30 BYTE), 
	"RVTITTLE" VARCHAR2(20 BYTE), 
	"RVSUBTITTLE" VARCHAR2(20 BYTE), 
	"RVCONTENT" VARCHAR2(500 BYTE), 
	"REGISTDT" TIMESTAMP (6), 
	"REGISTID" VARCHAR2(10 BYTE), 
	"UPDTDT" TIMESTAMP (6), 
	"UPDTID" VARCHAR2(10 BYTE), 
	"RVSCORE" FLOAT(126), 
	"MOVIECODE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."SN" IS '순번';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."MOVIENM" IS '영화명';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."RVTITTLE" IS '리뷰 제목';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."RVSUBTITTLE" IS '리뷰 소제목';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."RVCONTENT" IS '리뷰내용';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."REGISTDT" IS '등록일자';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."REGISTID" IS '등록자';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."UPDTDT" IS '수정일자';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."UPDTID" IS '수정자';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."RVSCORE" IS '리뷰평점';
   COMMENT ON COLUMN "SPRING"."MOVIEREVIEW"."MOVIECODE" IS '영화코드';
   COMMENT ON TABLE "SPRING"."MOVIEREVIEW"  IS '영화평론';
--------------------------------------------------------
--  DDL for Table MEMBERS
--------------------------------------------------------

  CREATE TABLE "SPRING"."MEMBERS" 
   (	"SN" NUMBER(*,0), 
	"USERID" VARCHAR2(20 BYTE), 
	"PWD" VARCHAR2(20 BYTE), 
	"USERNM" VARCHAR2(20 BYTE), 
	"TELNO" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"USERBLOCK" VARCHAR2(2 BYTE), 
	"REPLYBLOCK" VARCHAR2(2 BYTE), 
	"REGISTDT" TIMESTAMP (6), 
	"UPDTDT" TIMESTAMP (6), 
	"UPDTTYPE" VARCHAR2(2 BYTE), 
	"USERPOWER" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPRING"."MEMBERS"."SN" IS '순번';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."USERID" IS '아이디';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."PWD" IS '비밀번호';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."USERNM" IS '이름';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."TELNO" IS '전화번호';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."EMAIL" IS '이메일';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."USERBLOCK" IS '회원차단여부';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."REPLYBLOCK" IS '댓글차단여부';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."REGISTDT" IS '회원가입일자';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."UPDTDT" IS '수정일자';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."UPDTTYPE" IS '수정유형';
   COMMENT ON COLUMN "SPRING"."MEMBERS"."USERPOWER" IS '권한';
   COMMENT ON TABLE "SPRING"."MEMBERS"  IS '회원관리';
--------------------------------------------------------
--  DDL for Table REPLY
--------------------------------------------------------

  CREATE TABLE "SPRING"."REPLY" 
   (	"SN" NUMBER(*,0), 
	"USERID" VARCHAR2(20 BYTE), 
	"REPLY" VARCHAR2(300 BYTE), 
	"SCORE" FLOAT(126), 
	"MOVIECODE" VARCHAR2(20 BYTE), 
	"REGISTDT" TIMESTAMP (6), 
	"UPDTDT" TIMESTAMP (6), 
	"UPDTID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPRING"."REPLY"."SN" IS '순번';
   COMMENT ON COLUMN "SPRING"."REPLY"."USERID" IS '회원번호';
   COMMENT ON COLUMN "SPRING"."REPLY"."REPLY" IS '댓글내용';
   COMMENT ON COLUMN "SPRING"."REPLY"."SCORE" IS '평점';
   COMMENT ON COLUMN "SPRING"."REPLY"."MOVIECODE" IS '영화코드';
   COMMENT ON COLUMN "SPRING"."REPLY"."REGISTDT" IS '등록일자';
   COMMENT ON COLUMN "SPRING"."REPLY"."UPDTDT" IS '수정일자';
   COMMENT ON COLUMN "SPRING"."REPLY"."UPDTID" IS '수정자';
   COMMENT ON TABLE "SPRING"."REPLY"  IS '댓글관리';
--------------------------------------------------------
--  DDL for Table MOVIEPREVIEW
--------------------------------------------------------

  CREATE TABLE "SPRING"."MOVIEPREVIEW" 
   (	"SN" NUMBER(*,0), 
	"MOVIECODE" VARCHAR2(20 BYTE), 
	"SUMRY" VARCHAR2(50 BYTE), 
	"PRVLINK" VARCHAR2(200 BYTE), 
	"MOVIENM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPRING"."MOVIEPREVIEW"."SN" IS '순번';
   COMMENT ON COLUMN "SPRING"."MOVIEPREVIEW"."MOVIECODE" IS '영화코드';
   COMMENT ON COLUMN "SPRING"."MOVIEPREVIEW"."SUMRY" IS '설명';
   COMMENT ON COLUMN "SPRING"."MOVIEPREVIEW"."PRVLINK" IS '동영상링크';
   COMMENT ON COLUMN "SPRING"."MOVIEPREVIEW"."MOVIENM" IS '영화명';
   COMMENT ON TABLE "SPRING"."MOVIEPREVIEW"  IS '프리뷰';
--------------------------------------------------------
--  DDL for Table MOVIEINFO
--------------------------------------------------------

  CREATE TABLE "SPRING"."MOVIEINFO" 
   (	"SN" NUMBER(*,0), 
	"MOVIENM" VARCHAR2(50 BYTE), 
	"MOVIENMENG" VARCHAR2(50 BYTE), 
	"MOVIECODE" VARCHAR2(20 BYTE), 
	"PDYEAR" DATE, 
	"PDCOUNTRY" VARCHAR2(20 BYTE), 
	"DIRECTOR" VARCHAR2(40 BYTE), 
	"CASTING" VARCHAR2(200 BYTE), 
	"PDCOMPANY" VARCHAR2(100 BYTE), 
	"RELSEDATE" DATE, 
	"MOVIEPOSTER" VARCHAR2(200 BYTE), 
	"SCORE" FLOAT(126), 
	"PLOT" VARCHAR2(1000 BYTE), 
	"REGISTDT" TIMESTAMP (6), 
	"UPDTDT" TIMESTAMP (6), 
	"GENRE" VARCHAR2(10 BYTE), 
	"PDSTATUS" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."SN" IS '순번';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."MOVIENM" IS '영화명';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."MOVIENMENG" IS '영화명(영문)';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."MOVIECODE" IS '영화코드';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."PDYEAR" IS '제작연도';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."PDCOUNTRY" IS '제작국가';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."DIRECTOR" IS '감독';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."CASTING" IS '출연진';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."PDCOMPANY" IS '제작사';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."RELSEDATE" IS '개봉일자';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."MOVIEPOSTER" IS '영화포스터';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."SCORE" IS '영화평점';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."PLOT" IS '영화줄거리';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."REGISTDT" IS '등록일자';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."UPDTDT" IS '수정일자';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."GENRE" IS '장르';
   COMMENT ON COLUMN "SPRING"."MOVIEINFO"."PDSTATUS" IS '제작상태';
   COMMENT ON TABLE "SPRING"."MOVIEINFO"  IS '영화정보';
REM INSERTING into SPRING.ACTORINFO
SET DEFINE OFF;
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (1,'레오나르도 디카프리오','19980074','Leonardo Wilhelm DiCaprio is an American actor, film producer, and environmentalist. He has often played unconventional roles, particularly in biopics and period films. As of 2019, his films have grossed $7.2 billion worldwide, and he has placed eight times in annual rankings of the world''s highest-paid actors.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2q9tvih6sHPAEEbPoCRrWpf2IWVG5IOo5jIxqCA7dgrggsQO5','M','46','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (2,'틸다 스윈튼','20158485','Katherine Matilda Swinton is a Scottish actress. She is known for her leading roles in independent film and occasional supporting roles in blockbusters.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSTrcTyvkl6kFH5JsGC6CXLDLcHzpcpVrK-_79LYjxsLv5h7bLE','F','60','영국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (3,'제이크 질런홀','20158485','Jacob Benjamin Gyllenhaal is an American actor and producer. Born into the Gyllenhaal family, he is the son of director Stephen Gyllenhaal and screenwriter Naomi Foner; his older sister is actress Maggie Gyllenhaal.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRYjIU_Cegl7ntW0DAPSGjlXLa0psygzI6vc7hj4WOW4uiJz6Nc','M','40','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (4,'폴 데이노','20158485','Paul Franklin Dano is an American actor, director, screenwriter, producer, and musician. Dano started his career on Broadway before making his film debut in The Newcomers','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSWQDCM05AcqJqBumFGEk5M2-LG-sGZSb4bDnmkkbsmkq06UtVR','M','36','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (5,'안서현','20158485','Ahn Seo-hyun (born January 12, 2004) is a South Korean actress. She began her career as a child actress in 2008, and has since appeared in films and television series such as The Housemaid (2010), Single-minded Dandelion (2014) and the critically acclaimed Netflix film Okja (2017), which premiered at the 2017 Cannes Film Festival in competition for the Palme d''Or.','https://images.chosun.com/resizer/3WZUls0uwsczuWdou27m2xD-TaE=/464x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/G5YTPUNQRYFHH6VKIFGYF4KMTI.jpg','F','17','대한민국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (6,'봉준호','20158485','봉준호(奉俊昊, 1969년 9월 14일 ~ )는 대한민국의 영화 감독이다. 봉준호는 그의 영화 작업을 인정 받아 최우수 국제영화상, 최우수 작품상, 최우수 감독상, 최우수 각본상의 4개 부문의 상을 모두 수상한 최초의 아시아 영화 감독이 되었다. 그의 영화는 시기 적절한 사회적 주제, 다양한 장르, 블랙 코미디와 갑작스런 기분 변화를 특징으로 한다','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBwksxS5dkJPMINctK58500NVDKlXnrDdbt97UtXjsT2OQ5qr','M','51','대한민국','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (7,'캐리 피셔','19780080','캐리 프랜시스 피셔(영어: Carrie Frances Fisher[1], 1956년 10월 21일 ~ 2016년 12월 27일)는 미국의 배우, 작가, 프로듀서, 그리고 유머 작가다.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR9PvSl232PSP3qMJe63g7hiIGb_kjzXiWaugTQMVhRmVc-G5fK','F','66','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (8,'제임스 얼 존스','19780080','James Earl Jones is an American actor whose career spans more than seven decades. He has been described as "one of America''s most distinguished and versatile" actors for his performances in film, theater and television, and "one of the greatest actors in American history"','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT3mrUimeDOFezpvimeuR563GOA1as8gKM9YnS9swt04FYOOEfQ','M','90','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (9,'마크 해밀','19780080','Mark Richard Hamill is an American actor, voice actor, and writer. He is known for playing Luke Skywalker in the Star Wars film series, winning three Saturn Awards for the role. His other film appearances include Corvette Summer and The Big Red One.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT0W1rBFC1zAjS3amBGX6C3diI8zBZOeVW9oIphVXmIM4anleEO','M','69','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (10,'제임스 카메론','19980074','James Francis Cameron CC is a Canadian film director, producer, screenwriter, editor, artist, and environmentalist who currently lives in New Zealand. He is best known for making science fiction and epic films. Cameron first gained recognition for directing The Terminator.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNbZf9bzSjQhCZKXVuQYTNoIiAuiE2qsN8NWk5aTq6d1faV0su','M','66','캐나다','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (11,'케이트 윈슬렛','19980074','Kate Elizabeth Winslet CBE is an English actress. She is known for her work in independent films, particularly period dramas, and often portrays angst-ridden women. ','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT1S0oAdL-aKX4LhqM0HKlkMRVON9EA5T0iAp8pyjXVX0LpQU-I','F','45','영국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (12,'라맨 허','20187861','Raman Hui Shing-Ngai is a Hong Kong animator and film director best known for co-directing Shrek the Third, and directing several short films, including Kung Fu Panda: Secrets of the Furious Five, Scared Shrekless and Puss in Boots: The Three Diablos.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRQIubgzYWygstTE_fMSpiL890We0S8xctwPsqkznhXkEANpepZ','M','57','중국','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (13,'양조위','20187861','Tony Leung Chiu-wai is a Hong Kong actor and singer. He is considered one of Asia''s most successful and internationally recognised actors and was named as "Small Tiger" among Five Tiger Generals of TVB.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLpTsFj7_WUzE8rCcnJCoq-iWjSMxei53jgdKaAmORCy97WIDm','M','58','중국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (14,'백백하','20187861','Bai Bai He is a Chinese actress. She was among the highest paid film actresses in China. She is best known for her roles in such films as Love is Not Blind, Personal Tailor, Monster Hunt and Go Away Mr. Tumor.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSDuRrspa5k45lUb5WlJgG00PGTrh8l48xSkfr_-qO5Z5qMZe6X','F','37','중국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (15,'정백연','20187861','Jing Boran is a Chinese actor and singer who achieved popularity after becoming the champion at the 2007 talent contest My Hero. Along with the third-place winner Fu Xinbo, he formed a boy band called BoBo. Since 2008, Jing has appeared on a series of films and televisions.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQxpswXqIZKExilEpUrxiL11-GgKIW7L96_Ad4MMH0vuGOJWMn-','M','32','중국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (16,'피터 잭슨','20020234','Sir Peter Robert Jackson ONZ KNZM is a New Zealand film director, producer, and screenwriter. He is best known as the director, writer, and producer of the Lord of the Rings trilogy and the Hobbit trilogy, both of which are adapted from the novels of the same name by J. R. R. Tolkien.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRQHnA-V4DqU8xDTpwsADvNWat9IbAgrkKifsp-NUyoHSy5AGw6','M','59','뉴질랜드','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (17,'일라이저 우드','20020234','일라이저 우드(Elijah Wood, 1981년 1월 28일 ~ )는 미국의 배우, 영화 프로듀서, DJ?이다. 반지의 제왕 시리즈와 호빗: 뜻밖의 여정에서 프로도 배긴스역을 맡았다.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTrvdW7SGb21TFBzQKVS_QfvsleDzNt_8xT0bQxV0Pfqm25ZvHG','M','40','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (18,'이안 맥켈런','20020234','Sir Ian Murray McKellen CH CBE is an English actor whose career spans six decades. He has performed in genres ranging from Shakespearean and modern theatre to popular fantasy and science fiction.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQe-oAFBuuwnTGhR8a5U9Jw5vYLrI0c1JVrqy2HFh7Ki2DtUj1D','M','82','영국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (19,'비고 모텐슨','20020234','Viggo Peter Mortensen Jr. is an American actor, author, musician, photographer, poet, and painter. Born in New York to a Danish father and American mother, he lived in Argentina during his childhood.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQomN4Fmv7HI7eRqQPPL8di7G0nmJZfHW4VRpi_ikXkVXBtTeVI','M','62','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (20,'최재훈','20208401',null,'https://pds.joins.com/news/component/htmlphoto_mmdata/202009/17/fb845859-56a4-4343-a448-c51f76ff378d.jpg','M','41','대한민국','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (21,'존 타슬린','20208401','Johannes Taslim is an Indonesian actor and martial artist. He was also a member of Indonesia''s judo national team from 1997 to 2009.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ6GfEcaUcEPFAGXUDLDl-rtwm4gVLKrVCfrPZ8PeDz7LGZJqQ9','M','39','인도네시아','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (22,'장혁','20208401','Jang Hyuk is a South Korean actor and rapper. He is best known for his leading roles in the films Volcano High and Windstruck, and the television dramas Successful Story of a Bright Girl, Thank You, The Slave Hunters, Deep Rooted Tree, You Are My Destiny, Voice, Money Flower and The Swordsman.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSpRxibRH1CCkcLy698XXHOM1d6CedHpGZw4QRZtnbA9fxOyg7R','M','44','대한민국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (23,'김현수','20208401','Kim Hyun-soo is a South Korean actress. She often starred as the younger version of female protagonist in television series such as Bridal Mask and My Love from the Star, before receiving her first leading role in Solomon''s Perjury.','https://asianwiki.com/images/8/87/Kim_Hyun-Soo-2000-pt01.jpg','F','20','대한민국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (24,'이민혁','20208401','Lee Min-hyuk, commonly known as Minhyuk or Huta, is a South Korean rapper, singer, songwriter, actor and MC. He is a member of the South Korean boy group BtoB. He has appeared in multiple supporting roles in television series such as A New Leaf and Sweet, Savage Family. ','https://www.hellokpop.com/wp-content/uploads/2019/01/Lee-Min-Hyuk-3.jpg','M','30','대한민국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (25,'김주환','20162442','Jason Kim is a South Korean film director and screenwriter.','https://img0.yna.co.kr/photo/yna/YH/2017/07/31/PYH2017073116110001300_P2.jpg','M','40','대한민국','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (26,'박서준','20162442','대한민국의 배우.  다정한 말투와 외꺼풀의 눈과 서글서글한 눈매, 185cm의 큰 키와 좋은 비율[13]을 지녔으며, 안정적인 연기력을 바탕으로 차근차근 인상적인 필모를 쌓아 가고 있다.','https://upload.wikimedia.org/wikipedia/commons/e/e8/190626_%EB%B0%95%EC%84%9C%EC%A4%80_%281%29.jpg','M','32','대한민국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (27,'강하늘','20162442','Kang Ha-neul is a South Korean actor. He is best known for his roles in television dramas The Heirs, Angel Eyes, Misaeng: Incomplete Life, Moon Lovers: Scarlet Heart Ryeo, and When the Camellia Blooms;','https://img.hankyung.com/photo/202102/03.21325723.1.jpg','M','31','대한민국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (28,'박하선','20162442','박하선(朴河宣, 1987년 10월 22일 ~ )은 대한민국의 배우이다. 2005년에 텔레비전 드라마 《사랑은 기적이 필요해》를 통해 배우로 활동하기 시작했다.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTJfUIZGKTUBDEeFykOiednD32LH3cF21CJ69Nc9yKYrqfPX2j4','F','33','대한민국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (29,'라즈쿠마르 히라니','20110899','Rajkumar Hirani is an Indian film director, film producer, screenwriter, distributor and film editor. Hirani has directed five Hindi films, including Munna Bhai M.B.B.S., Lage Raho Munnabhai, 3 Idiots, PK and Sanju, and all of which have been commercial and critical successes.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSe2hgUycgOBBxLt-YwChlv3mC5O8EkB123R_tv3lvY8SLv2r56','M','58','인도','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (30,'아미르 칸','20110899','Mohammed Aamir Hussain Khan is an Indian actor, director, filmmaker, and television talk show host. Through his career spanning over 30 years in Hindi films, Khan has established himself as one of the most popular and influential actors of Indian cinema.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLWRiKD-zyYbd2yGbWVvzQr8rShW_JpB-MBcQhAjB_FHSo6Ty6','M','56','인도','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (31,'R. 마드하반','20110899','Ranganathan Madhavan is an Indian actor, writer, film director and producer who predominantly appears in Tamil and Hindi language films. Madhavan has won four Filmfare Awards South and three Tamil Nadu State Film Awards.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRdNHkePkKHvjpbSHc8LmuRegIM6EATB4Vn_NfNEetuGdyEwmFz','M','51','인도','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (32,'샤르만 조시','20110899','Sharman Joshi is an Indian film and theatre actor. Sharman has acted, produced, and directed stage plays in English, Hindi, Marathi and Gujarati languages, but is mainly known for his work in Bollywood. He made his acting debut in Godmother.','http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSAts1ro5eDdDWwkEdkrOBeWSHAXKFhlupRRllrMTJDLKMlHDCBxHBkyC7KEv3O','M','42','인도','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (33,'조지 루카스','19780080','조지 월튼 루카스 2세 (1944년 5월 14일 ~ )는 미국의 영화 감독이자 프로듀서, 각본가이다. 스타워즈 시리즈로 크게 성공하여 영화업계에 가장 영향력 있는 사람 중 하나가 되었다.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQcD3-pANfYEMOBoClEm9bDgFGEqGPbkmDLqhfsLYR7t83uaZ5k','M','77','미국','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (34,'저스틴 린','20205041','Justin Lin is a Taiwanese-born American film director. His films have grossed US$2.3 billion worldwide as of March 2017. He is best known for his directorial work on Better Luck Tomorrow, the Fast & Furious franchise from The Fast and the Furious: Tokyo Drift to Fast & Furious 6 and F9, and Star Trek Beyond.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSEwL_JvxEIy-bV3P3K0vivUDMZ1cASoW9gR7K7ZK4mq2wkcBeB','M','49','미국','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (35,'빈 디젤','20205041','미국의 배우, 성우, 프로듀서. 대표작으로는 분노의 질주, 아이언 자이언트, 가디언즈 오브 갤럭시 시리즈, 라이언 일병 구하기가 있다.  빈 디젤이라는 이름은 ''빈센트''의 약칭인 ''빈''에 친구들이 그에게 붙여준 별명 ''디젤''을 더해서 지은 예명이다.','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTgQM_Yxck1R7ECSXhxUGXAdD6tIF8OWz8avAWrXuB6G8X2kiu3','M','53','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (36,'존 시나','20205041','John Felix Anthony Cena is an American professional wrestler, actor, and television presenter. He is currently signed to WWE. Born and raised in West Newbury, Massachusetts, Cena moved to California in 1998 to pursue a career as a bodybuilder.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSZwLxd4xBwQJeHqDDT0U2Or-IXKCokgUqX1UeE27Vr9w5EUnaj','M','44','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (37,'미셸 로드리게스','20205041','Mayte Michelle Rodriguez is an American actress. Her breakout role as a troubled boxer in the independent film Girlfight was met with critical acclaim, and earned her several awards, including the Independent Spirit Award and Gotham Award for Best Debut Performance.','https://upload.wikimedia.org/wikipedia/commons/f/fd/Michelle_Rodriguez_Cannes_2018_cropped.jpg','F','42','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (38,'타이리스 깁슨','20205041','Tyrese Darnell Gibson is an American singer, songwriter, author, rapper, actor, model, DJ, and screenwriter. After releasing several albums, he transitioned into films, with lead roles in several major Hollywood releases','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREvvevrqg23qfcmeCGA4zJBsoRPxw81jPLghNlS1JiSu9Y1siS','M','42','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (39,'릴리 워쇼스키','19990193','Lana Wachowski (born June 21, 1965, formerly known as Larry Wachowski)[1] and Lilly Wachowski (born December 29, 1967, formerly known as Andy Wachowski)[2] are American film and television directors, writers and producers.[3] The sisters are both trans women.[4][5][6]','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPqK_O26IGcpwOGrbZ1G9NzTicndOipt9x8crxymYdn0FeGpLZ','F','53','미국','T');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (40,'키아누 리브스','19990193','Keanu Charles Reeves is a Canadian actor. Born in Beirut and raised in Toronto, Reeves began acting in theatre productions and in television films before making his feature film debut in Youngblood.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTkqugX0WLc78TSUXjzYAQvwT7nqU8vJknuJGldrNv0FO7kD8vl','M','56','캐나다','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (41,'로렌스 피쉬번','19990193','로렌스 피시번은 미국의 배우로, 많은 영화와 드라마에 출연했으며, 대중들에게는 매트릭스 트릴로지의 모피어스 역할로 가장 유명하다.','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTbpjMiELi2ayfFJbiT4bASP81UGXgXirJ1aAAXPgnXoJ8lZoSp','M','59','미국','F');
Insert into SPRING.ACTORINFO (SN,ACTOR,MOVIECODE,PROFILE,PHOTOLINK,GENGER,AGE,CONTURY,DIRECTORAT) values (42,'캐리 앤 모스','19990193','Carrie-Anne Moss is a Canadian actress. Following early roles on television, she rose to international prominence for her role of Trinity in The Matrix series.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTfB1MnNZFbA_0PbtJOZtLsaECmMiSgyHdmI9VkKQhEjLDoByvn','F','53','캐나다','F');
REM INSERTING into SPRING.MOVIEREVIEW
SET DEFINE OFF;
Insert into SPRING.MOVIEREVIEW (SN,MOVIENM,RVTITTLE,RVSUBTITTLE,RVCONTENT,REGISTDT,REGISTID,UPDTDT,UPDTID,RVSCORE,MOVIECODE) values (1,'옥자','옥자감상','옥자는 끔찍','끔찍하다',to_timestamp('21/06/05 00:09:06.000000000','RR/MM/DD HH24:MI:SSXFF'),'admin',to_timestamp('21/06/05 00:49:23.000000000','RR/MM/DD HH24:MI:SSXFF'),'admin',1,'20158485');
Insert into SPRING.MOVIEREVIEW (SN,MOVIENM,RVTITTLE,RVSUBTITTLE,RVCONTENT,REGISTDT,REGISTID,UPDTDT,UPDTID,RVSCORE,MOVIECODE) values (25,'매트릭스','매트릭스 컴백','짤림방지','매트릭스는 SF의 전설 그 자체로 컴퓨터 그래픽과 뉴로맨서 깁슨의 영향을 받은 스토리 등 뭐하나 부족하지 않은 걸작이다.',to_timestamp('21/06/06 13:25:41.000000000','RR/MM/DD HH24:MI:SSXFF'),'admin',to_timestamp('21/06/06 13:25:41.000000000','RR/MM/DD HH24:MI:SSXFF'),'admin',4.4,'19990193');
REM INSERTING into SPRING.MEMBERS
SET DEFINE OFF;
Insert into SPRING.MEMBERS (SN,USERID,PWD,USERNM,TELNO,EMAIL,USERBLOCK,REPLYBLOCK,REGISTDT,UPDTDT,UPDTTYPE,USERPOWER) values (1,'gildong123','12341234a@','홍길동','02-1234-1234','gildong@naver.com','0','0',to_timestamp('21/06/02 21:50:30.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/06/05 11:40:46.000000000','RR/MM/DD HH24:MI:SSXFF'),'1','0');
Insert into SPRING.MEMBERS (SN,USERID,PWD,USERNM,TELNO,EMAIL,USERBLOCK,REPLYBLOCK,REGISTDT,UPDTDT,UPDTTYPE,USERPOWER) values (2,'admin','admin123@','관리자','02-1234-1234','admin@movie.com','0','0',to_timestamp('21/06/02 21:52:29.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/06/02 21:52:29.000000000','RR/MM/DD HH24:MI:SSXFF'),'1','1');
REM INSERTING into SPRING.REPLY
SET DEFINE OFF;
Insert into SPRING.REPLY (SN,USERID,REPLY,SCORE,MOVIECODE,REGISTDT,UPDTDT,UPDTID) values (122,'admin','테스트',1.1,'20205041',to_timestamp('21/06/06 14:19:03.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/06/06 14:19:03.000000000','RR/MM/DD HH24:MI:SSXFF'),'admin');
Insert into SPRING.REPLY (SN,USERID,REPLY,SCORE,MOVIECODE,REGISTDT,UPDTDT,UPDTID) values (110,'admin','wwwwwww',1,'20158485',to_timestamp('21/06/06 10:43:26.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/06/06 10:43:26.000000000','RR/MM/DD HH24:MI:SSXFF'),'admin');
REM INSERTING into SPRING.MOVIEPREVIEW
SET DEFINE OFF;
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (1,'20158485','옥자 미리보기','https://youtube.com/embed/eOdMVj1mnHE','옥자');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (28,'20205041','분노의 질주 티저 영상','https://www.youtube.com/embed/L9Y-hn2COm0','분노의 질주 더 얼티메이트');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (30,'19990193','매트릭스 소개 영상','https://www.youtube.com/embed/m8e-FF8MsqU','매트릭스');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (32,'20208401','검객 티저 영상','https://www.youtube.com/embed/murHQPp1ao4','검객');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (34,'20162442','청년경찰 티저 영상','https://www.youtube.com/embed/uflYEv_0JoY','청년경찰');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (36,'20110899','세얼간이 티저 영상','https://www.youtube.com/embed/vtyuYXrJDrI','세 얼간이');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (38,'19780080','스타워즈 소개 영상','https://www.youtube.com/embed/1g3_CFmnU7k','스타워즈 새로운 희망');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (40,'19980074','타이타닉 소개 영상','https://www.youtube.com/embed/jUm88F3MEbQ','타이타닉');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (42,'20187861','몬스터 헌트2 티저 영상','https://www.youtube.com/embed/1GJTd4iB5dk','몬스터 헌트2: 요괴사냥단');
Insert into SPRING.MOVIEPREVIEW (SN,MOVIECODE,SUMRY,PRVLINK,MOVIENM) values (44,'20020234','반지의 제왕 티저 영상','https://www.youtube.com/embed/wBDzJyNR6b4','반지의 제왕: 두개의 탑');
REM INSERTING into SPRING.MOVIEINFO
SET DEFINE OFF;
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (1,'옥자','Okja','20158485',to_date('16/08/21','RR/MM/DD'),'미국','봉준호','틸다 스윈튼, 제이크 질런홀, 폴 데이노, 안서현 외','케이트 스트...',to_date('17/06/29','RR/MM/DD'),'https://upload.wikimedia.org/wikipedia/ko/9/9c/Okja.jpeg',3.8,'강원도 산골 소녀 ‘미자’(안서현)에게 옥자는 10년 간 함께 자란 둘도 없는 친구이자 소중한 가족이다. 자연 속에서 평화롭게 지내던 어느 날, 글로벌 기업 ‘미란도’가 나타나 갑자기 옥자를 뉴욕으로 끌고가고, 할아버지(변희봉)의 만류에도 미자는 무작정 옥자를 구하기 위해 위험천만한 여정에 나선다.
극비리에 옥자를 활용한 ‘슈퍼돼지 프로젝트’를 추진 중인 ‘미란도 코퍼레이션’의 CEO ‘루시 미란도’(틸다 스윈튼), 옥자를 이용해 제2의 전성기를 꿈꾸는 동물학자 ‘죠니’(제이크 질렌할), 옥자를 앞세워 또 다른 작전을 수행하려는 비밀 동물 보호 단체 ALF까지.
각자의 이권을 둘러싸고 옥자를 차지하려는 탐욕스러운 세상에 맞서, 옥자를 구출하려는 미자의 여정은 더욱 험난해져 간다.',to_timestamp('21/05/22 17:00:27.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/22 17:00:27.000000000','RR/MM/DD HH24:MI:SSXFF'),'SF','개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (44,'분노의 질주 더 얼티메이트','Fast & Furious 9 THE FAST SAGA','20205041',to_date('21/01/01','RR/MM/DD'),'미국','저스틴 린','빈 디젤, 존 시나, 미셸 로드리게스, 타이리스 깁슨 외','원 레이스 필름스',to_date('21/05/21','RR/MM/DD'),'https://t1.daumcdn.net/movie/aa6aaf313fb192e6f77f5bd4490d5e127d707240',3.9,'도미닉(빈 디젤)은 자신과 가장 가까웠던 형제 제이콥(존 시나)이 사이퍼(샤를리즈 테론)와 연합해전 세계를 위기로 빠트릴 위험천만한 계획을 세운다는 사실을 알게 되고,이를 막기 위해 다시 한 번 패밀리들을 소환한다.가장 가까운 자가 한순간, 가장 위험한 적이 된 상황도미닉과 패밀리들은 이에 반격할 놀라운 컴백과 작전을 세우고지상도, 상공도, 국경도 경계가 없는 불가능한 대결이 시작되는데…',to_timestamp('21/05/29 13:12:48.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 13:12:48.000000000','RR/MM/DD HH24:MI:SSXFF'),'액션','개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (50,'매트릭스','The Matrix','19990193',to_date('99/01/01','RR/MM/DD'),'미국','릴리 워쇼스키','키아누 리브스, 로렌스 피쉬번, 캐리 앤 모스','실버 픽쳐스',to_date('99/05/15','RR/MM/DD'),'https://t1.daumcdn.net/cfile/tistory/177D293E51128B121D',4.7,'인간의 기억마저 AI에 의해 입력되고 삭제 되는 세상. 진짜보다 더 진짜 같은 가상 현실 ‘매트릭스’. 그 속에서 진정한 현실을 인식할 수 없게 재배되는 인간들.  그 ‘매트릭스’를 빠져 나오면서 AI에게 가장 위험한 인물이 된 ‘모피어스’는 자신과 함께 인류를 구할 마지막 영웅 ‘그’를 찾아 헤맨다. 마침내 ‘모피어스’는 낮에는 평범한 회사원으로, 밤에는 해커로 활동하는 청년 ‘네오’를 ‘그’로 지목하는데…',to_timestamp('21/05/29 14:05:30.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 14:05:30.000000000','RR/MM/DD HH24:MI:SSXFF'),'SF','개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (46,'검객','The Swordsman','20208401',to_date('20/01/01','RR/MM/DD'),'한국','최재훈','존 타슬린, 장혁, 김현수, 이민혁 외','오퍼스픽쳐스',to_date('20/10/16','RR/MM/DD'),'https://t1.daumcdn.net/movie/89f2059cfe8ae665b176cdf627d28a377649250a',3.9,'광해군 폐위 후, 스스로 자취를 감춘 조선 최고의 검객 ‘태율’(장혁).한편, 조선을 사이에 둔 청과 명의 대립으로 혼란은 극에 달하고,청나라 황족 ‘구루타이’(조 타슬림)는 무리한 요구를 해대며 조선을 핍박한다. 백성들의 고통이 날로 더해가던 중, ‘구루타이’의 수하들에 의해 태율의 딸이 공녀로 잡혀가고 만다. 세상을 등진 채 조용히 살고자 했던 조선 최고의 검객 ‘태율’은 딸을 구하기 위한 자비 없는 검을 휘두르기 시작하는데…',to_timestamp('21/05/29 13:35:47.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 13:35:47.000000000','RR/MM/DD HH24:MI:SSXFF'),'액션','개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (48,'청년경찰','Midnight Runners','20162442',to_date('17/01/01','RR/MM/DD'),'한국','김주환','박서준, 강하늘, 박하선 외','무비락',to_date('17/08/09','RR/MM/DD'),'http://img.movist.com/?img=/x00/04/90/05_p1.jpg',3.4,'의욕충만 경찰대생 기준(박서준) X 이론백단 경찰대생 희열(강하늘). 둘도 없는 친구인 두 사람은 외출을 나왔다 우연히 납치 사건을 목격하게 된다. 목격자는 오직 두 사람 뿐! 기준과 희열은 학교에서 배운 대로 지체 없이 경찰에 신고한다. 하지만 복잡한 절차와 부족한 증거로 수사는 전혀 진행될 기미가 보이지 않는 상황! 1분 1초가 급박한 상황에서 아까운 시간만 흘러가자, 기준과 희열은 직접 발로 뛰는 수사에 나서기로 하고 예측 불가능한 상황을 마주하게 되는데…',to_timestamp('21/05/29 13:57:44.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 13:57:44.000000000','RR/MM/DD HH24:MI:SSXFF'),'액션','개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (52,'세 얼간이','3 Idiots','20110899',to_date('09/01/01','RR/MM/DD'),'인도','라즈쿠마르 히라니','아미르 칸, R. 마드하반, 샤르만 조시 외','비두 비노드 초프라',to_date('11/08/17','RR/MM/DD'),'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F276C5C4552CEA3930B',4.7,'천재들만 간다는 일류 명문대 ICE, 성적과 취업만을 강요하는 학교를 발칵 뒤집어 놓은 대단한 녀석 란초!?아버지가 정해준 꿈, `공학자`가 되기 위해 정작 본인이 좋아하는 일은 포기하고 공부만 하는 파파보이 파르한!찢어지게 가난한 집, 병든 아버지와 식구들을 책임지기 위해 무조건 대기업에 취직해야만 하는 라주!?친구라는 이름으로 뭉친 `세 얼간이`! 삐딱한 천재들의 진정한 꿈을 찾기 위한 세상 뒤집기 한판이 시작된다!',to_timestamp('21/05/29 14:12:45.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 14:12:45.000000000','RR/MM/DD HH24:MI:SSXFF'),'코미디','개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (55,'스타워즈 새로운 희망','Star Wars: A New Hope','19780080',to_date('77/01/01','RR/MM/DD'),'미국','조지 루카스','캐리 피셔, 제임스 얼 존스, 마크 해밀 외','루카스필름',to_date('78/06/01','RR/MM/DD'),'http://t1.daumcdn.net/cfile/12182E10AD7B067EA2',4.2,'내전의 시대이다. 비밀기지에서 공습을 감행한 반란군 함대는 사악한 은하 제국을 상대로 첫 번째 승리를 거두었다.  전투 도중, 반란군 첩보원은 제국의 절대적인 무기로, 행성 전체를 파괴할 위력을 지닌 무장된 우주 기지 데스스타의 기밀 설계도를 탈취하는 데 성공했다.  악랄한 제국 요원들에 의해 추격당하며 레아 공주는 그녀의 우주선에 탑승해 그녀의 백성들을 살리고 은하계에 자유를 되찾아줄 설계도를 가지고 고향으로 향하는데....',to_timestamp('21/05/29 14:19:53.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 14:19:53.000000000','RR/MM/DD HH24:MI:SSXFF'),'SF','개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (57,'타이타닉','Titanic','19980074',to_date('97/01/01','RR/MM/DD'),'미국','제임스 카메론','레오나르도 디카프리오, 케이트 윈슬렛 외','파라마운트 픽쳐스',to_date('98/02/20','RR/MM/DD'),'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F203957174C03B979E9',4.8,'“내 인생의 가장 큰 행운은 도박에서 딴 티켓으로 당신을 만난 거야” 단 하나의 운명, 단 한 번의 사랑, 영원으로 기억될 세기의 러브 스토리  우연한 기회로 티켓을 구해 타이타닉호에 올라탄 자유로운 영혼을 가진 화가 잭(레오나르도 디카프리오)은 막강한 재력의 약혼자와 함께 1등실에 승선한 로즈(케이트 윈슬렛)에게 한 눈에 반한다. 진실한 사랑을 꿈꾸던 로즈 또한 생애 처음 황홀한 감정에 휩싸이고, 둘은 운명 같은 사랑에 빠지는데…',to_timestamp('21/05/29 14:28:05.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 14:28:05.000000000','RR/MM/DD HH24:MI:SSXFF'),'로맨스','재개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (59,'몬스터 헌트2: 요괴사냥단','Monster Hunt 2','20187861',to_date('17/01/01','RR/MM/DD'),'홍콩','라맨 허','양조위, 백백하, 정백연','无?影都?媒有限公司',to_date('18/02/21','RR/MM/DD'),'http://t1.daumcdn.net/movie/9a5d440db846c549e7754c47a85bce427bd30410',3.5,'인간과 요괴가 공존하는 세상, 두 종족의 갈등은 점점 깊어져만 가고 특별한 힘을 가진 ''우바''를 차지 하기 위해 인간계와 요괴계는 우바를 쫓는다. 한편, 우바와 헤어진 인간 부모 ''샤오란''과 ''천음''은 서로를 그리워하며 찾아 헤매고, 우연히 ''우바''의 비범함을 알아챈 사기꾼 ''투스꾼''은 요괴사냥단과 요괴들의 전쟁에 휘말리게 되는데..',to_timestamp('21/05/29 14:36:30.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 14:36:30.000000000','RR/MM/DD HH24:MI:SSXFF'),'액션','개봉');
Insert into SPRING.MOVIEINFO (SN,MOVIENM,MOVIENMENG,MOVIECODE,PDYEAR,PDCOUNTRY,DIRECTOR,CASTING,PDCOMPANY,RELSEDATE,MOVIEPOSTER,SCORE,PLOT,REGISTDT,UPDTDT,GENRE,PDSTATUS) values (62,'반지의 제왕: 두개의 탑','The Lord Of The Rings: The Two Towers','20020234',to_date('02/01/01','RR/MM/DD'),'미국','피터 잭슨','일라이저 우드, 이안 맥켈런, 비고 모텐슨 외','윙넛 필름',to_date('02/12/18','RR/MM/DD'),'http://t1.daumcdn.net/brunch/service/user/c1lg/image/Tvv8nCH5NqDzpVTRj91IzG4KIuM.jpg',4.5,'모든 힘을 지배할 악의 군주 ‘사우론’의 절대반지가 깨어나고 악의 세력이 세상을 지배해가며 중간계는 대혼란에 처한다. 호빗 ‘프로도’와 그의 친구들, 엘프 ‘레골라스’, 인간 전사 ‘아라곤’과 ‘보로미르’ 드워프 ‘김리’ 그리고 마법사 ‘간달프’로 구성된 반지원정대는 평화를 지키기 위해 절대반지를 파괴할 유일한 방법인 반지가 만들어진 모르도르를 향해 목숨을 건 여정을 떠난다. 한편, 점점 세력을 넓혀온 사우론과의 피할 수 없는 전쟁을 앞둔 반지원정대는 드디어 거대한 최후의 전쟁을 시작하는데...',to_timestamp('21/05/29 14:47:22.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/05/29 14:47:22.000000000','RR/MM/DD HH24:MI:SSXFF'),'판타지','개봉');
--------------------------------------------------------
--  DDL for Index SYS_C007185
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C007185" ON "SPRING"."ACTORINFO" ("SN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007174
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C007174" ON "SPRING"."MOVIEREVIEW" ("MOVIECODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007164
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C007164" ON "SPRING"."MEMBERS" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index REPLY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."REPLY_PK" ON "SPRING"."REPLY" ("SN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007180
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C007180" ON "SPRING"."MOVIEPREVIEW" ("MOVIECODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007155
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C007155" ON "SPRING"."MOVIEINFO" ("MOVIECODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger ACTORINFO_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SPRING"."ACTORINFO_AI_TRG" 
BEFORE INSERT ON actorInfo 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT actorInfo_SEQ.NEXTVAL
    INTO :NEW.sn
    FROM DUAL;
END;

/
ALTER TRIGGER "SPRING"."ACTORINFO_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MOVIEREVIEW_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SPRING"."MOVIEREVIEW_AI_TRG" 
BEFORE INSERT ON movieReview 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT movieReview_SEQ.NEXTVAL
    INTO :NEW.sn
    FROM DUAL;
END;

/
ALTER TRIGGER "SPRING"."MOVIEREVIEW_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MEMBERS_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SPRING"."MEMBERS_AI_TRG" 
BEFORE INSERT ON members 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT members_SEQ.NEXTVAL
    INTO :NEW.sn
    FROM DUAL;
END;

/
ALTER TRIGGER "SPRING"."MEMBERS_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger REPLY_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SPRING"."REPLY_AI_TRG" 
BEFORE INSERT ON reply 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT reply_SEQ.NEXTVAL
    INTO :NEW.sn
    FROM DUAL;
END;

/
ALTER TRIGGER "SPRING"."REPLY_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MOVIEPREVIEW_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SPRING"."MOVIEPREVIEW_AI_TRG" 
BEFORE INSERT ON moviePreview 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT moviePreview_SEQ.NEXTVAL
    INTO :NEW.sn
    FROM DUAL;
END;

/
ALTER TRIGGER "SPRING"."MOVIEPREVIEW_AI_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MOVIEINFO_AI_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SPRING"."MOVIEINFO_AI_TRG" 
BEFORE INSERT ON movieInfo 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT movieInfo_SEQ.NEXTVAL
    INTO :NEW.sn
    FROM DUAL;
END;

/
ALTER TRIGGER "SPRING"."MOVIEINFO_AI_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table ACTORINFO
--------------------------------------------------------

  ALTER TABLE "SPRING"."ACTORINFO" ADD CONSTRAINT "SYS_C007185" PRIMARY KEY ("SN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRING"."ACTORINFO" MODIFY ("DIRECTORAT" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."ACTORINFO" MODIFY ("ACTOR" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."ACTORINFO" MODIFY ("SN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIEREVIEW
--------------------------------------------------------

  ALTER TABLE "SPRING"."MOVIEREVIEW" ADD PRIMARY KEY ("MOVIECODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("MOVIECODE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("UPDTID" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("UPDTDT" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("REGISTID" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("REGISTDT" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("RVSUBTITTLE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("RVTITTLE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("MOVIENM" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEREVIEW" MODIFY ("SN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBERS
--------------------------------------------------------

  ALTER TABLE "SPRING"."MEMBERS" ADD PRIMARY KEY ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRING"."MEMBERS" MODIFY ("USERPOWER" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBERS" MODIFY ("REGISTDT" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBERS" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBERS" MODIFY ("TELNO" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBERS" MODIFY ("USERNM" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBERS" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBERS" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MEMBERS" MODIFY ("SN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPLY
--------------------------------------------------------

  ALTER TABLE "SPRING"."REPLY" ADD CONSTRAINT "REPLY_PK" PRIMARY KEY ("SN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRING"."REPLY" MODIFY ("UPDTID" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."REPLY" MODIFY ("UPDTDT" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."REPLY" MODIFY ("REGISTDT" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."REPLY" MODIFY ("MOVIECODE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."REPLY" MODIFY ("SCORE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."REPLY" MODIFY ("REPLY" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."REPLY" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."REPLY" MODIFY ("SN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIEPREVIEW
--------------------------------------------------------

  ALTER TABLE "SPRING"."MOVIEPREVIEW" ADD PRIMARY KEY ("MOVIECODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRING"."MOVIEPREVIEW" MODIFY ("MOVIENM" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEPREVIEW" MODIFY ("PRVLINK" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEPREVIEW" MODIFY ("MOVIECODE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEPREVIEW" MODIFY ("SN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOVIEINFO
--------------------------------------------------------

  ALTER TABLE "SPRING"."MOVIEINFO" ADD PRIMARY KEY ("MOVIECODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SPRING"."MOVIEINFO" MODIFY ("GENRE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEINFO" MODIFY ("REGISTDT" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEINFO" MODIFY ("MOVIECODE" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEINFO" MODIFY ("MOVIENMENG" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEINFO" MODIFY ("MOVIENM" NOT NULL ENABLE);
  ALTER TABLE "SPRING"."MOVIEINFO" MODIFY ("SN" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ACTORINFO
--------------------------------------------------------

  ALTER TABLE "SPRING"."ACTORINFO" ADD CONSTRAINT "FK_ACTORINFO_MOVIECODE_MOVIEIN" FOREIGN KEY ("MOVIECODE")
	  REFERENCES "SPRING"."MOVIEINFO" ("MOVIECODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOVIEREVIEW
--------------------------------------------------------

  ALTER TABLE "SPRING"."MOVIEREVIEW" ADD CONSTRAINT "FK_MOVIEREVIEW_MOVIECODE_MOVIE" FOREIGN KEY ("MOVIECODE")
	  REFERENCES "SPRING"."MOVIEINFO" ("MOVIECODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REPLY
--------------------------------------------------------

  ALTER TABLE "SPRING"."REPLY" ADD CONSTRAINT "FK_REPLY_MOVIECODE_MOVIEINFO_M" FOREIGN KEY ("MOVIECODE")
	  REFERENCES "SPRING"."MOVIEINFO" ("MOVIECODE") ENABLE;
  ALTER TABLE "SPRING"."REPLY" ADD CONSTRAINT "FK_REPLY_USERID_MEMBERS_USERID" FOREIGN KEY ("USERID")
	  REFERENCES "SPRING"."MEMBERS" ("USERID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MOVIEPREVIEW
--------------------------------------------------------

  ALTER TABLE "SPRING"."MOVIEPREVIEW" ADD CONSTRAINT "FK_MOVIEPREVIEW_MOVIECODE_MOVI" FOREIGN KEY ("MOVIECODE")
	  REFERENCES "SPRING"."MOVIEINFO" ("MOVIECODE") ENABLE;
