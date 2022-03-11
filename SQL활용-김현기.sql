-- 1번
/*
create database member_db;
CREATE USER 'member_db'@'localhost' IDENTIFIED BY 'member_db';

GRANT ALL PRIVILEGES ON member_db.* to member_db@localhost;
FLUSH PRIVILEGES;
*/

-- 2번 
/*
use member_db;
create table login_info
(
	member_num int primary key AUTO_INCREMENT,
    member_id varchar(18) not null unique,
    member_pass	varchar(18) not null
);
*/



-- 3번 
/*
insert into login_info(member_num,member_id,member_pass)
values('1','holding','q1w2e3');

insert into login_info(member_id,member_pass)
values('hold','q1w2e3');

insert into login_info(member_id,member_pass)
values('tax','roooot');
insert into login_info(member_id,member_pass)
values('box','password');
insert into login_info(member_id,member_pass)
values('hover','q1234567');
insert into login_info(member_id,member_pass)
values('sixman','sixman123');
insert into login_info(member_id,member_pass)
values('bottle','asdfasdf');
insert into login_info(member_id,member_pass)
values('bob','zxcv1234');
insert into login_info(member_id,member_pass)
values('jonbs','apple12');
insert into login_info(member_id,member_pass)
values('greatH','951753');
*/


-- 4번
-- select * from login_info;


-- 5번 
/*
create table notice
(
	notice_num int primary key AUTO_INCREMENT,
	notice_tit varchar(40) not null,
    notice_txt	varchar(100),
    notice_date datetime default CURRENT_TIMESTAMP,
    user_name varchar(20),
    user_num int not null
);
*/





-- 6번 
/*
insert into notice(notice_num,notice_tit,notice_txt,notice_date,user_name,user_num )
values('1','인증메일오류','이메일 인증메일이 오지 않습니다.','2007-08-06','이승엽',1);

insert into notice(notice_tit,notice_txt,user_name,user_num )
values('배송문의','배송이언제올까요','김광현',2);

insert into notice(notice_tit,notice_txt,user_name,user_num )
values('등급문의','vip 등급은 어떻게 되나요','최정',5);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('혜택문의','등급 혜택이 뭔가요','박정권',3);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('배송문의','배송이언제올까요','이승엽',9);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('등업요청','등업해주십시오','김광현',2);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('출석체크','출석체크합니다','이종범',4);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('출석체크','출석체크합니다','류현진',6);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('환불요청','환불바랍니다.','김광현',2);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('교환요청','다른사이즈로 교환원합니다','이승엽',1);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('교환요청','다른색상으로 교환원합니다','최정',5);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('상품리뷰','나쁘지않습니다','김원형',10);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('배송문의','배송이언제올까요','조원우',7);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('상품리뷰','조금작습니다','김광현',2);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('환불요청','환불 바랍니다','이승엽',1);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('배송문의','직접 찾아가도 될까요','박정권',3);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('포인트사용','포인트 사용이 되지않습니다','류현진',6);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('기타문의','결제창에서 포인트가 사라졌습니다','박정권',3);

insert into notice(notice_tit,notice_txt,user_name,user_num )
values('배송문의',null,'김광현',2);
insert into notice(notice_tit,notice_txt,user_name,user_num )
values('결제문의','결제오류로 넘어가지 않습니다.','김광현',2);
*/


-- 7번
-- select notice_num as 일련번호,notice_tit as 제목, notice_txt as 내용, notice_date as 작성일, user_name as 작성자, user_num as 회원번호 from notice ORDER BY notice_num DESC;

-- 8번
/*
select  left(user_name,1) as 성,  count(user_name) as 인원수
from notice
where user_name like '김%';
*/


-- 9번
/*
delete from notice 
where notice_txt is null;
select notice_num as 일련번호,notice_tit as 제목, notice_txt as 내용, notice_date as 작성일, user_name as 작성자, user_num as 회원번호 from notice ORDER BY notice_num DESC;
*/


-- 10 번
/*
update login_info set member_pass='qwer1234'
where member_num='5';
select * from login_info;
*/
-- 11번 
/*
create index idx_notice 
on notice(notice_tit,user_name);
*/

-- 12번
/*
show index from notice;
notice_tit와 user_name의 key name에 idx_notice index를 지정해줌으로써 테이블 조회시 인덱스를 이용해 빨리 찾을 수 있다.
*/

-- 13번
/*
create view my_view(회원아이디,제목,내용,작성일,작성자)
as select login_info.member_id,notice_tit,notice.notice_txt,notice.notice_date,notice.user_name
from notice join login_info on notice.user_num=login_info.member_num
group by notice.user_num;

select * 
from my_view;
*/

-- 14번
/*
create view my_view2(제목,작성일,작성자,회원아이디)
as select notice_tit,notice.notice_date,notice.user_name,login_info.member_id
from notice join login_info on notice.user_num=login_info.member_num
group by notice.user_num;

select * 
from my_view2;

*/

-- 15번 
/*
drop database member_db;
 drop USER 'member_db'@'localhost';
*/








