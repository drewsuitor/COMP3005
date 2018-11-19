-- Problem 1.7 Write an SQL query that will produce in one table a list of all the acceptable trunks that can be used to route a call to the 416 area code, office code 334. This query should list the trunks in the order of preference. (The answer should list trunks with routes 416,334 then those with 416,000 and then those with 000,000 for example)

select * from trunk_routes where area-613 and office=334 union all select * from trunk_routes where area=416 and office='000' union all select * from trunk_routes where area='000' and office='000' order by area desc, office desc;;

/* Test output
portid      area        office
----------  ----------  ----------
102         416         334
102         416         000
106         416         000
107         000         000
*/
