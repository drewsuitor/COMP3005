-- Problem 1.5 Find the names of all the subscribers who subscribe to at least three services.

select name from service_subscribers inner join subscribers where service_subscribers.line = subscribers.portid group by line having count(*) > 2;

/* Test Output
name
--------------
Michael Jordan
Joe Carter
Homer Simpson
Vince Carter
Chris Pronger
Frank Thomas
Steve Sampras
Matt Stajan
*/
