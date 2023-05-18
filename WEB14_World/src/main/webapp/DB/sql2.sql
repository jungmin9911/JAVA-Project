-- 관리자 입력
insert into Lworker values('admin','1234', '관리자', '010-7777-7777');
insert into Lworker values('scott','1234', '홍길동', '010-6400-6080');

sdadsasa
-- 회원입력 
insert into Lmember(id, pwd, name, zip_num, address1, address2, phone, email) values
('one', '1234', '김나리', '133-110', '서울시 성동구 성수동1가' , '1번지21호', '017-777-7777','acc@abc.com');
insert into Lmember(id, pwd, name, zip_num, address1, address2, phone, email)values
('two', '1234', '김길동', '130-120', '서울시 송파구 잠실2동' , '리센츠 아파트 201동 505호', '011-123-4567','acc@abc.com');

select*from Lworker;
select*from Lmember;

-----베스트 놀이기구
create or replace view best_pro_view
as
select * from
(select rownum, pseq, name, price2, image from product  where bestyn='Y'  order by indate desc) 
where  rownum <=4;


-----새로운 놀이기구
create or replace view new_pro_view
as
select*from
(select rownum, pseq, name, price2, image from product  where useyn='Y'  order by indate desc )
where rownum <= 4;

select*from new_pro_view;