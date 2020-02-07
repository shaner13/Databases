alter session  set current_schema = SRiedy;

CREATE TABLE MUSIC (
Genre Varchar(10) NULL,
Title Varchar(10) 
    DEFAULT 'Track'
    NOT NULL,    
Song_Duration Number(4,2)
    DEFAULT 00.00
    NOT NULL,
First_Played_Date DATE 
    DEFAULT SYSDATE
    NOT NULL,
First_Added_Date DATE 
    DEFAULT SYSDATE
    NOT NULL,
Artist Varchar(10)
    DEFAULT 'Artist'
    NOT NULL,
Album Varchar(10) 
    DEFAULT 'Album'
    NOT NULL,
Song_Cost Number(3,2) 
    DEFAULT 0.00
    NOT NULL
);

INSERT INTO MUSIC VALUES (
    'Country',        --Genre
    'Starlight',      --Title
    03.41,            --SongDuration
    '08/MAR/2012',    --DateFirstPlayed
    '13/APR/2012',    --DateFirstAdded
    'TayLord',        --Artist
    'RED',            --Album
    1.20              --SongCost
);

INSERT INTO MUSIC VALUES (
    'Pop',             --Genre
    'Clean',           --Title
    03.24,             --SongDuration
    '15/SEP/2014',     --DateFirstPlayed
    '24/SEP/2014',     --DateFirstAdded
    'TayLord',         --Artist
    '1989',            --Album
    1.29               --SongCost
);

INSERT INTO MUSIC (Genre, Title, Song_Duration, Artist, Album) VALUES 
( 'Pop', 'Lover', 02.58, 'TayLord', 'Lover');

INSERT INTO MUSIC (Genre, Title, Song_Duration, Artist, Album) VALUES 
( 'Pop', 'Delicate', 03.48, 'TayLord', 'reputation');

select * from music;

CREATE TABLE CARS (
Car_Owner Varchar(20) NOT NULL,

EMail Varchar(30) 
    NOT NULL,
    
Colour Varchar(10)
    DEFAULT 'Black',

Make Varchar(20),

Holds Number(1)
    DEFAULT 5,

Reg Varchar(15)
    
);

INSERT INTO CARS VALUES (
    'Ken Delvin',      --Car_Owner
    'ken@dit.ie',      --EMAIL
    'silver',          --Colour
    'Toyota Lexus',    --Make
    6,                 --Holds
    '07D11211'         --Reg
);

INSERT INTO CARS VALUES (
    'Ken Delvin',      --Car_Owner
    'ken@dit.ie',      --EMAIL
    'black',           --Colour
    'Volkswagen Golf', --Make
    5,                 --Holds
    '00D12831'         --Reg
);

INSERT INTO CARS VALUES (
    'Ken Delvin',      --Car_Owner
    'ken@dit.ie',      --EMAIL
    'black',           --Colour   
    'Audi',            --Make
    5,                 --Holds
    '90D10800'         --Reg
);

INSERT INTO CARS VALUES (
    'Fred Bloggs',      --Car_Owner
    'fred@ibm.ie',      --EMAIL
    'brown',            --Colour
    'Ford Escort',      --Make
    5,                  --Holds
    '80D2002'           --Reg
);

INSERT INTO CARS VALUES (
    'Fred Bloggs',      --Car_Owner
    'fred@ibm.ie',      --EMAIL
    'black',            --Colour
    'Ford Anglia',      --Make
    4,                  --Holds
    '50D03'             --Reg
);

select * from CARS;
