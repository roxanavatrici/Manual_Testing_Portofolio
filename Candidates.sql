create database recruitment;
use recruitment;

create table candidates (
    candidate_id int primary key auto_increment,
    firstName varchar(25) not null,
    lastName varchar(25) not null,
    vacancy varchar(25) not null,
    dateOfApplication date not null
);

desc candidates;

SELECT * FROM candidates;

insert into candidates (firstName, lastName, vacancy, dateOfApplication) values
('Tamara', 'Sarbu', 'Senior QA Lead', '2022-01-20'),
('Monica', 'Radulescu', 'Senior QA Lead', '2022-01-26'),
('Mihai', 'Sandu', 'Software Engineer', '2022-02-20'),
('Eugen', 'Panait', 'IT Manager', '2022-02-28'),
('Manole', 'Panaitescu', 'Senior Support Specialist', '2022-03-20'),
('Dumitru', 'Berteanu', 'Senior OA Lead', '2022-03-30');

insert into candidates (firstName, lastName, vacancy, dateOfApplication)
values ('Ruth','Mitarca','IT Manager','2022-08-15'), ('Mihaela','Mihai','Software Engineer','2022-06-15');

update candidates
set vacancy = 'Software Engineer'
where firstName = 'Ruth';

select lastName from candidates where vacancy = 'Software Engineer';

select firstName, lastName from candidates where vacancy = 'Senior QA Lead'
and dateOfApplication like '%-01-%';

alter table candidates add column resume text;
update candidates set resume = 'Yes' where firstName = 'Tamara';
update candidates set resume = 'Yes' where firstName = 'Monica';
update candidates set resume = 'Yes' where firstName = 'Ruth';

select * from candidates where dateOfApplication like '%-01-%';

select count(resume) from candidates;

select * from candidates where vacancy = 'Senior QA Lead' 
or resume = 'Yes';

select * from candidates where (vacancy = 'Senior QA Lead' 
or resume = 'Yes')
and dateOfApplication like '%-01-%';

