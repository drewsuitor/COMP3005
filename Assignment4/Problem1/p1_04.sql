
-- Problem 1.4 Find the names and address of all subscribers who subscribe to all of the available services. (Note the result for the current data might be empty but your query should work if the TA's add more data to the databse.)

select name, address, count(*) from service_subscribers inner join subscribers where service_subscribers.line = subscribers.portid group by line having count(*) = 5;

-- No output because no customer is subscribed to all 5 services
/* Test Output

*/
