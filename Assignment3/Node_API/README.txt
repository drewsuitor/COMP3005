Drew Suitor
101003158

To run the program, navigate to the location of Node_API and execute
npm install
npm start

a server will start on the localhost

to view users go to 

http://localhost:3000/api/users

to search by songs go to 
http://localhost:3000/api/songs?title=aSongTitle


to search by composers go to
http://localhost:3000/api/songs?composer=aComposer

to search by both go to 
http://localhost:3000/api/songs?title=aSongTitle&composer=aComposer

I was not able to find a more up to date fakebooks3005fall2018.db file on the course website so the one I am using 
may not be the most up to date

test URLs:
http://localhost:3000/api/users
http://localhost:3000/api/songs?title=
http://localhost:3000/api/songs?composer=
http://localhost:3000/api/songs?title=&composer=
http://localhost:3000/api/songs?title=Hotel
http://localhost:3000/api/songs?composer=Steve
http://localhost:3000/api/songs?title=Hotel&composer=Steve
http://localhost:3000/api/song/32
