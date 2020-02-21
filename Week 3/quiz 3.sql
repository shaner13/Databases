--a
CREATE TABLE Team AS (

  SELECT
  
    clubid,
    C_NAME,
    C_LOCATION
  
  FROM POBYRNE.F_Club
  
);

--b
ALTER TABLE Team RENAME COLUMN clubid to teamid;

--c
ALTER TABLE Team ADD TEAM_CAPTAIN varchar2(15) DEFAULT 'Captain 1';

--d
ALTER TABLE Team
ADD CONSTRAINT PK_team_id PRIMARY KEY (teamid);

UPDATE Team 
SET TEAM_CAPTAIN = 'Marino Captain'
WHERE C_LOCATION = 'Marino';

--e
CREATE TABLE Player (

    playerId varchar2(9),
    
    player_name varchar2(15),
    
    player_DOB Date,
    
    teamid varchar2(20) 
    NOT NULL
    REFERENCES Team

);

--f
INSERT INTO Player VALUES (
   'Player001',         --playerID
   'Obama 123',         --playerName
   '16/SEP/2000',       --playerDOB
   'Kilmacud Crokes'    --teamid
);

INSERT INTO Player VALUES (
   'Player002',         --playerID
   'Michelle 123',      --playerName
   '17/AUG/2001',       --playerDOB
   'Oliver Plunkett'    --teamid
);

INSERT INTO Player VALUES (
   'Player003',         --playerID
   'John Kennedy',      --playerName
   '07/MAR/1998',       --playerDOB
   'St Brigids'         --teamid
);

INSERT INTO Player VALUES (
   'Player004',         --playerID
   'Jackie Onasis',     --playerName
   '23/DEC/1998',       --playerDOB
   'St Vincents'        --teamid
);

select * from team join player using (teamid);
