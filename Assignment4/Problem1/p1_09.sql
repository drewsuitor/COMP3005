-- Problem 1.9 Do the same as question 1.7 but this time only include trunks that have at least one 'IDLE' channel. That is, write an SQL query that will produce in one table a list of all the acceptable trunks that can be used to route a call to the 416 area code, office code 334 have at least one idle channel. This query should list the trunks in the order of preference. (The answer should list trunks routes 416,334 then 416,000 then 000,000 for example)

select distinct trunk_routes.portid, area, office from trunk_routes inner join trunk_channels where trunk_channels.portid=trunk_routes.portid and area=416 and office=334 or area=416 and office='000' or area='000' and office='000' and trunk_channels.state='IDLE' order by area desc, office desc;

/* Test output
portid      area        office
----------  ----------  ----------
102         416         334
102         416         000
106         416         000
107         000         000
*/
