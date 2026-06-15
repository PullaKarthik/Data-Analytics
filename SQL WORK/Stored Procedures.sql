use db;

create table players
(
player_id int,
player_name varchar(50),
country varchar(20),
goals int
);

INSERT INTO players
values
(1,'Sunil chetri','India',110),
(2,'Ronaldo','Portugal',100),
(3,'Neymar','Brazil',80),
(4,'Mesi','Argentina',95),
(5,'Benzema','France',90),
(6,'Griezmann','France',85);

select * from players;

delimiter &&
create procedure player_info()
begin
select player_name,country,goals from players where goals >= 100;
end&&
delimiter ;

call player_info;

delimiter &&
create procedure top_player_info(IN num INT)
begin
select player_name,country,goals from players order by goals desc limit 3;
end&&
delimiter ;

call top_player_info(2);

set sql_safe_updates=0;

delimiter &&
create procedure update_player_info(IN num INT)
begin
update players set goals = 200 where player_name='Sunil chetri';
update players set goals = 150 where player_name='Ronaldo';
update players set goals = 125 where player_name='Messi';
end&&
delimiter ;

call update_player_info(3);

delimiter &&
create procedure count_player_info(IN var varchar(20),OUT total_player int)
begin
select count(*) from players where country = var into total_player;
end&&
delimiter ;

call count_player_info('France',@total_count);

select @total_count as count_player_info;