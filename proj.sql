USE oracle;
CREATE TABLE lawyer (
    lawyerID INT PRIMARY KEY,
    law_firstName VARCHAR(50),
    law_lastName VARCHAR(50),
    specification VARCHAR(50),
    law_email VARCHAR(50),
    contact INT 
);
Use oracle;
show tables like 'lawyer';

Use oracle;
SHOW COLUMNS FROM lawyer;

Use oracle;
Alter table lawyer modify contact INT NOT NULL;

USE oracle;
create table users (
    user_id varchar(50) PRIMARY KEY,
    user_first varchar(50),
    user_last varchar(50),
    user_email varchar(50),
    user_contact INT
);


Use oracle;
Alter table lawyer modify lawyerID varchar(50);

Use oracle;
show COLUMNS FROM lawyer;
show COLUMNS FROM users;

use oracle;
Alter table users modify user_contact INT NOT NULL;

use oracle;
create table questions(
    user_id varchar(50) REFERENCES users(user_id),
    question_id INT PRIMARY KEY,
    question_text LONGTEXT
);

Use oracle;
show COLUMNS FROM questions;

use oracle;
create table answers(
    question_id INT REFERENCES questions(question_id),
    answer_id INT,
    answer_text LONGTEXT
);

use oracle;
show COLUMNS FROM answers;

use oracle;
alter table answers modify answer_id INT PRIMARY KEY; 

use oracle;
show tables;

use oracle;
drop table student;

use oracle;
alter table users modify user_id int auto_increment;

use oracle;
alter table users modify user_contact varchar(10) not null;

use oracle;
alter table lawyer modify lawyerID int auto_increment;

use oracle;
alter table lawyer modify contact varchar(10);

use oracle;
alter table questions modify question_id int auto_increment;

use oracle;
alter table answers modify answer_id int auto_increment;

use oracle;
alter table answers add specification varchar(50) REFERENCES lawyer(specification);

use oracle;
show COLUMNS from users;
show COLUMNS from lawyer;
show COLUMNS from questions;
show COLUMNS from answers;

use oracle;
insert into users values(1,'ranbir', 'kapoor', 'rk28@gmail.com', '9999999999');

use oracle;
alter table answers add user_id int REFERENCES users(user_id);
