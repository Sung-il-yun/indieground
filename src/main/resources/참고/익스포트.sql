--------------------------------------------------------
--  파일이 생성됨 - 토요일-5월-29-2021   
--------------------------------------------------------
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
--  DDL for Index SYS_C007155
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRING"."SYS_C007155" ON "SPRING"."MOVIEINFO" ("MOVIECODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
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
