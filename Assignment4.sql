/*
Morgan Volland
CSC 355 Section 511
Assignment 4
Feb 4, 2021
*/


/*1*/

SELECT TID, Tname
FROM AGENT Left Outer JOIN ASSIGNMENT ON ASSIGNMENT.Agentid = AGENT.AID 
JOIN TEAM ON TEAM.TID= ASSIGNMENT.TeamID
WHERE AGENT.ANAME = 'Ethan Hunt';

/*2*/

SELECT distinct ANAME
From Agent Join TEAM on Agent.AID = Team.LeaderID
Order By ANAME;

/*3*/

Select TID, Tname, count(agentID)
From TEAM join ASSIGNMENT on TEAM.tid = ASSIGNMENT.teamID
Group By TeamID, TID, Tname
Order By count(agentID) desc;
    
/*4*/

Select distinct tname
From Mission Join Team on mission.teamid = team.tid
Where Location = 'London';

/*5*/

Select AID, Aname, sum(Hours) 
From Agent Left Outer Join ASSIGNMENT on agent.aid = assignment.agentid
Group by AID, Aname
Order by sum(hours);

/*6*/

Select Location, Aname  
From Mission Join Team on mission.teamid = team.tid 
Join Agent on team.leaderid = agent.aid
Order by location;

/*7*/

Select distinct Aname, Salary
From Agent Left Outer Join ASSIGNMENT on Agent.aid = assignment.agentid
Where Agent.aid NOT IN (SELECT agentid FROM Assignment)
Order by salary;

/* 8*/

Select sum(salary)
FROM AGENT JOIN ASSIGNMENT ON ASSIGNMENT.Agentid = AGENT.AID 
JOIN TEAM ON TEAM.TID= ASSIGNMENT.TeamID
JOIN Mission on mission.teamid = team.tid
WHERE Mission.MissionId = 'D01'
Order by salary;