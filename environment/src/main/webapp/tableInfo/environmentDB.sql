
/* 
 * 뉴스기사 테이블
 * 번호, 
 * 제목, 
 * 글 
 */
create table news_article(
	article_no int,				
	title varchar(255) not null,
	content long
);

//
create sequence num_seq
increment by 1 start with 1;
/*===============================================================*/


/*login
 * 
 * 아이디
 * 이름
 * 비밀번호
 * 이메일
 * 회원가입 날짜 및 시간
 * */
create table member(
memberid varchar(30) primary key,
name varchar(50) not null,
password varchar(255) not null,
email varchar(50),
regdate datetime not null,
moddate datetime,
error_pwd int
);

select * from login;

/*article*/
create table article(
	article_no int auto_increment primary key,
	writer_id varchar(50) not null,
	writer_name varchar(50) not null,
	title varchar(255) not null,
	regdate datetime not null,
	moddate datetime not null,
	read_cnt int
);

create table article_content(
	article_no int primary key,
	content text
);

select * from article;

select * from article_content;

select last_insert_id() from article;

//limit 시작번호(0부터), size
select * from article order by article_no desc limit 0,2;

select * from article_content where article_no = 7;

select now();












