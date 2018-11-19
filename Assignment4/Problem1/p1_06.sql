-- Problem 1.6 Produce a table that lists the most popular service (or services). That is, give the name of the service that has the most subscribers.

select service from (select service, max(numcount) from (select service, count(*) as numcount from service_subscribers group by service));

/* Test Output
service
----------
MSG
*/
