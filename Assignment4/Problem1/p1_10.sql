-- Problem 1.10 Produce a table that lists the name of all the service-subscribers that subscribe to at least all the same services as Jason Allison subscribes to but possibly others as well. Jason Allison rents the line with portID=2.

select name from subscribers inner join service_subscribers where subscribers.portid = service_subscribers.line and service_subscribers.service in (select service from subscribers inner join service_subscribers where subscribers.portid = service_subscribers.line and subscribers.name = 'Jason Allison') group by name having count(*)>1;

/* Test Output:
Homer Simpson
Jason Allison
Joe Carter
Matt Stajan
Michael Jorda
*/
