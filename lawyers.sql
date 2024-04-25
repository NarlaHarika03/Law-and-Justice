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

use lawyers;
select * from login_details;

use lawyers;
create table lawyer_details (
    law_name varchar(255) not null,
    law_email varchar(255) not null,
    law_contact varchar(255) not null unique,
    law_password varchar(255) not null unique,
    specification varchar(255) not null,
    about LONGTEXT not null,
    Dob Date,
    experience text not null,
    primary key (law_email)
);

use lawyers;
show columns from lawyer_details;

use lawyers;
select * from lawyer_details;

use lawyers;
alter table lawyer_details add column photo LONGBLOB;

use lawyers;
alter table lawyer_details modify column photo longtext;

use lawyers;
alter table lawyer_details drop column law_password;

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('A', 'A@gmail.com', 'xxxxxxxxxx', 'Family Lawyer', 'As a dedicated family lawyer, I provide compassionate legal guidance to help families navigate complex issues with care and expertise. With a focus on resolution and protection of familial bonds, I strive to achieve the best outcomes for my clients and their loved ones.','1960-01-01','23 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');


use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('B', 'B@gmail.com', 'xxxxxxxxxB', 'Family Lawyer', 'As a dedicated family lawyer, I specialize in providing compassionate legal counsel to individuals navigating sensitive familial issues, such as divorce, child custody, and domestic violence. With a commitment to upholding the well-being of families, I advocate tirelessly to achieve fair resolutions and safeguard the rights of my clients.','1965-03-04','18 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('C', 'C@gmail.com', 'xxxxxxxxxC', 'Civil Litigation Lawyer', 'As a seasoned civil litigation lawyer, I bring extensive experience and strategic prowess to the courtroom, passionately representing clients in a wide array of disputes. With a focus on delivering personalized solutions and achieving favorable outcomes, I am dedicated to upholding justice and advocating vigorously on behalf of my clients.','1963-05-09','20 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('D', 'D@gmail.com', 'xxxxxxxxxD', 'Civil Litigation Lawyer', 'As a civil litigation lawyer, I thrive on the challenges of the legal arena, meticulously crafting arguments and leveraging my expertise to resolve complex disputes. Committed to delivering client-centric representation, I navigate the intricacies of the law with diligence and determination, ensuring the protection of my clients rights and interests','1967-06-10','19 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('E', 'E@gmail.com', 'xxxxxxxxxE', 'Criminal Lawyer', 'As a criminal lawyer, I am driven by a fervent commitment to justice, advocating fiercely for my clients rights and freedoms in the face of legal challenges. With a steadfast dedication to due process and a comprehensive understanding of criminal law, I tirelessly pursue fair outcomes, striving to ensure every individual receives a robust defense and a fair trial.','1962-10-10','20 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15'),
('F', 'F@gmail.com', 'xxxxxxxxxF', 'Criminal Lawyer', 'As a criminal lawyer, I am driven by a profound commitment to justice and the protection of individual rights. With a keen understanding of the complexities of the legal system, I fearlessly advocate for my clients, ensuring their voices are heard and their rights are upheld. Through unwavering dedication and strategic prowess, I strive to secure fair outcomes and defend the presumption of innocence, empowering individuals facing criminal charges to navigate the legal process with confidence and dignity.','1968-12-20','25 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
update lawyer_details set photo = 'https://www.freepik.com/free-photos-vectors/lawyer-character/15' where 1=1;
