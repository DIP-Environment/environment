
/* 
 * �돱�뒪湲곗궗 �뀒�씠釉�
 * 踰덊샇, 
 * �젣紐�, 
 * 湲� 
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
 * �븘�씠�뵒
 * �씠由�
 * 鍮꾨�踰덊샇
 * �씠硫붿씪
 * �쉶�썝媛��엯 �궇吏� 諛� �떆媛�
 * */
create table member(
memberid varchar(30) primary key,
name varchar(50) not null,
password varchar(255) not null,
email varchar(50),
regdate datetime not null,
moddate_pwd datetime,
error_pwd int
);

select * from member;

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

//limit �떆�옉踰덊샇(0遺��꽣), size
select * from article order by article_no desc limit 0,2;

select * from article_content where article_no = 7;

select now();












