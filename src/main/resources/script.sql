create table movies;
alter table movies
    add Title varchar(100);

alter table movies
    add Runtime int;

alter table movies
    add Genre varchar(100);

alter table movies
    add "IMDB Score" numeric(2,1);

alter table movies
    add Rating varchar(20);
insert into movies values ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG');
insert into movies values ('Lavalantula', 83, 'Horror', 4.7, 'TV-14');
insert into movies values ('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13');
insert into movies values ('Waltz With Bashir', 90, 'Documentary', 8.0, 'R');
insert into movies values ('Spaceballs', 96, 'Comedy', 7.1, 'PG');
insert into movies values ('Monsters Inc', 92, 'Animation', 8.1, 'G');
insert into movies values ('A Beautiful Mind', 106, 'Drama', 8.7, 'PG');
insert into movies values ('Shawshank Redemption', 172, 'Drama', 9.2, 'U');
insert into movies values ('Deadpool', 98, 'Comedy', 8.8, 'PG');

select * from movies where Genre = 'Sci-Fi';
select * from movies where movies."IMDB Score" >= 6.5;
select * from movies where Rating in ('PG', 'G') and Runtime <= 100;
select avg(runtime), genre from movies where movies."IMDB Score" < 7.5 group by genre;
update movies set rating = 'R' where title = 'Starship Troopers';
select id, rating from movies where genre in ('Horror', 'Documentary');
select avg(movies."IMDB Score"), max(movies."IMDB Score"), min(movies."IMDB Score"), rating from movies group by rating having count(*) > 1;
delete from movies where rating = 'R';