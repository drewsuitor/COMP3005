--CREATE DATABASE TABLES
--=======================

CREATE TABLE IF NOT EXISTS songs(
      title text NOT NULL, --title of the song
      composer text NOT NUll, --composer or composers of the song
      bookcode text NOT NULL,  --book code for the book the song is from
      page int, --page number in book where song appears
      length int, --number of pages the song occupies in the book
      studentnum text NOT NULL,  --student number of who contributed the data
      primary key (title,bookcode,page,studentnum)
      );

--INSERT DATA
--=======================

begin transaction;

--Insert songs
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values ('A Foggy Day','Ella Fitzgerald, Louis Armstrong', 'RBK1-5ed-F', 6, 1, '101003158');
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values('I''m Afraid','Sarah Vaughan', 'RBK1-5ed-F', 6, 1, '101003158');
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values ('A Night in Tunisia','Miles Davis, Charlie Parker', 'RBK1-5ed-F', 7, 1, '101003158');
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values ('Mr. Jin','Art Blakey, Lee Morgan', 'RBK1-5ed-F', 7, 1, '101003158');
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values ('African Flower','Duke Ellington', 'RBK1-5ed-F', 8, 1, '101003158');
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values ('Ololoqui Valley','Herbie Hancock', 'RBK1-5ed-F', 8, 1, '101003158');
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values ('Afro Blue','Mongo Santamaria', 'RBK1-5ed-F', 9, 1, '101003158');
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values ('Perfect Love','Jamala (unconfirmed)', 'RBK1-5ed-F', 9, 1, '101003158');
insert or replace into songs(title, composer, bookcode, page, length, studentnum)
   values ('Afternoon in Paris','John Lewis, Sacha Distel', 'RBK1-5ed-F', 10, 1, '101003158');
/*
  Replace the above insert statements with ones
  that contribute the data you are responsible for
*/

end transaction;
