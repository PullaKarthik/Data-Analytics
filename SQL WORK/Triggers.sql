use db;

select * from players;

delimiter &&
CREATE TRIGGER trg_BeforeUpdatePlayers
BEFORE UPDATE ON Players
FOR EACH ROW
BEGIN
  IF NEW.goals < OLD.goals THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Goals cannot be decreased';
  END IF;
END;
&&
delimiter ;

set sql_safe_updates=0;

delimiter &&
CREATE TRIGGER trg_BeforeInsertPlayers
BEFORE INSERT ON Players
FOR EACH ROW
BEGIN
  IF NEW.goals < 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Goals cannot be negative';
  END IF;
END;
&&
delimiter ;

insert into players values(8,'deklerk','south africa',-10);

update players set goals=-10 where player_id=7;