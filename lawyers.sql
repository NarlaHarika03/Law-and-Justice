create table login_details(
    username varchar(255) not null,
    email varchar(255),
    password text not null,
    contact varchar(255) not null,
    unique(username),
    unique(contact),
    primary key (email)
);

alter table login_details modify column password varchar(255);
use lawyers;
show COLUMNS from login_details;
alter table login_details modify column password varchar(255) not null unique;


-- GRANT ALL PRIVILEGES ON *.* TO 'Harika'@'localhost' IDENTIFIED BY 'sunrika@1903';
-- FLUSH PRIVILEGES;

use lawyers;
select * from login_details;