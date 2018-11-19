-- Problem 1.3 List the names of all the subscribers who are originators of a call to someone who is also a subscriber on the same switch (i.e. a line to line call)

select name from subscribers inner join calls where subscribers.portid = calls.orig and calls.och = calls.tch;

/* Test Output
name
-----------
Mats Sundin
Jason Allis
Homer Simps
Michael Jor
Ed Belfour
*/
