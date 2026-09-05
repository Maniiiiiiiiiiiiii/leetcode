select firstName, lastName, city, state
from Person as p left join aDdress as a
on p.personid=a.personid
