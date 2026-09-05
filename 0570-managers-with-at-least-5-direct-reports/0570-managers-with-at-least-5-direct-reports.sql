select e.name from employee e join employee a on e.id=a.managerid group by a.managerid having count(a.managerid)>=5;
#where e.id=a.managerid group by a.managerid having count(a.managerid)>5; 