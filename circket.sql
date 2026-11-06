create database Cricket_App

  create table Player(
PlayerID int primary key,
PlayerName varchar(20),
Age int,
Gender varchar(30),
Role varchar(20),
Country varchar(40)
)
insert into Player values(101,'vamsi','19','male','batsman','india')
insert into Player values(102,'pavan','20','male','bowler','india')
insert into Player values(103,'shasi','21','male','allrounder','india')
insert into Player values(104,'prasanth','19','male','ampair','india')
insert into Player values(105,'hemanth','18','male','batsman','india')
insert into Player values(106,'mahesh','19','male','wicket keeper','india')
insert into Player values(107,'uttam','20','male','batsman','india')
insert into Player values(108,'mani','19','male','batsman','india')
insert into Player values(109,'divya','21','female','batsman','india')
insert into Player values(110,'kalyani','19','female','bowler','india')

  create table Team
(
    TeamId int primary key,
    TeamName varchar(20),
    Country varchar(30),
    Coach varchar(10),
    Ranking int
)
insert into team values (201, 'India', 'India', 'Vamsi', 1)
insert into team values (202, 'Australia', 'Australia', 'Pavan', 2)
insert into team values (203, 'England', 'England', 'Shasi', 3)
insert into team values (205, 'New Zealand', 'New Zealand', 'Mahesh', 5)
insert into team values  (206, 'Pakistan', 'Pakistan', 'Uttam', 6)
insert into team values  (207, 'Sri Lanka', 'Sri Lanka', 'Prasanth', 7)
insert into team values  (208, 'Bangladesh', 'Bangladesh', 'Manoj', 8)
insert into team values  (209, 'Afghanistan', 'Afghanistan', 'Ravi', 9)
insert into team values (210, 'West Indies', 'West Indies', 'Kumar', 10)

create table  Match
(
MatchId int primary key,
Team1Id int foreign key references Team(Teamid),

Team2Id int  foreign key references Team(Teamid),
Matchdate date not null,
Venue char(20) not null,
Matchtype char(20) not null,
Winnerid int  foreign key references Team(Teamid)
)

insert into match values (301, 401, 501, 2026-09-01, 'delhi','odi',601)
insert into match values (302, 402, 502, 2026-09-02, 'durban','t20',602)
insert into match values (303, 403, 503, 2026-09-03,'kabul','t20',603)
insert into match values (304, 404, 504, 2026-09-04, 'banglore','t20',604)
insert into match values (305, 405, 505, 2026-09-05, 'sydeney','test',605)
insert into match values (306, 406, 506, 2026-09-06, 'london','odi',606)
insert into match values (307, 407, 507, 2026-09-07, 'barbados','test',607)
insert into match values (308, 408, 508, 2026-09-08, 'lords','t20',608)
insert into match values (309, 409, 509, 2026-09-09, 'melbourne','t20',609)
insert into match values (310, 410, 510, 2026-09-10, 'mumbai','test',610)

select*from player
select*from team
select*from match