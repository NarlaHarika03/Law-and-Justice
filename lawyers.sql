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
update lawyer_details set photo = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIfHTWQQ9v5dmvO80sWzgQ2_1br7OkJIzPIg&s" where 1=1;

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('G', 'G@gmail.com', 'xxxxxxxxxG', 'Real Estate Lawyer', 'With over a decade of experience in real estate law, I specialize in property transactions, zoning issues, and landlord-tenant disputes, ensuring smooth and legally sound real estate dealings for my clients.
My practice focuses on providing comprehensive legal support for residential and commercial real estate matters, from purchase agreements to litigation, with a commitment to protecting my clients property investments.','1967-07-13','19 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('H', 'H@gmail.com', 'xxxxxxxxxH', 'Trail Lawyer', 'As a seasoned trial lawyer, I have a proven track record of successfully representing clients in complex civil and criminal cases, delivering robust defense and prosecution strategies in court.
I bring a wealth of courtroom experience to my clients, specializing in high-stakes litigation and dedicated to achieving favorable outcomes through meticulous preparation and persuasive advocacy.','1975-03-20','15 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('I', 'I@gmail.com', 'xxxxxxxxxI', 'Bankruptcy Lawyer', 'With extensive experience in bankruptcy law, I guide individuals and businesses through Chapter 7, 11, and 13 filings, providing strategic solutions to manage debt and regain financial stability.
My practice is dedicated to offering compassionate and effective legal counsel for clients facing financial distress, helping them navigate the bankruptcy process with clarity and confidence.','1960-11-30','25 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('J', 'J@gmail.com', 'xxxxxxxxxJ', 'Estate Planning Lawyer', 'I specialize in crafting personalized estate plans that include wills, trusts, and powers of attorney, ensuring my clients assets are protected and their wishes are honored.
My goal is to provide peace of mind through comprehensive estate planning services, helping families plan for the future and minimize tax implications and potential disputes','1963-12-20','20 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('K', 'K@gmail.com', 'xxxxxxxxxK', 'Probate Lawyer', 'As a probate lawyer, I assist clients in managing the complex process of estate administration, from validating wills to resolving disputes and distributing assets according to the decedents wishes.
I offer compassionate and knowledgeable legal support during the probate process, ensuring that estates are settled efficiently and in compliance with state laws.','1963-12-15','20 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('L', 'L@gmail.com', 'xxxxxxxxxL', 'Tax Lawyer', 'With expertise in tax law, I provide strategic advice on tax planning, compliance, and dispute resolution, helping individuals and businesses navigate the complexities of federal and state tax regulations.
My practice focuses on minimizing tax liabilities and resolving tax controversies, offering clients tailored solutions to meet their specific financial goals and legal requirements.','1963-12-25','21 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('M', 'M@gmail.com', 'xxxxxxxxxM', 'Immigration Lawyer', 'I specialize in immigration law, assisting clients with visa applications, green cards, and citizenship processes, as well as defending against deportation and removal proceedings.
My dedication lies in helping individuals and families achieve their immigration goals, providing knowledgeable and compassionate legal representation throughout their journey.','1958-12-10','26 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('N', 'N@gmail.com', 'xxxxxxxxxN', 'Intellectual Property Lawyer', 'As an intellectual property lawyer, I protect my clients innovations and creative works through patent, trademark, and copyright registrations, as well as enforcing IP rights against infringement.
My focus is on safeguarding the intellectual assets of businesses and individuals, ensuring their ideas and brands are legally protected and effectively managed.','1962-12-15','19 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('O', 'O@gmail.com', 'xxxxxxxxxO', 'Corporate Lawyer', 'With a strong background in corporate law, I advise businesses on mergers and acquisitions, corporate governance, compliance, and contract negotiations, supporting their growth and legal needs.
My practice is dedicated to providing strategic legal counsel to companies of all sizes, helping them navigate the complexities of corporate transactions and regulatory requirements.','1967-09-25','21 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('P', 'P@gmail.com', 'xxxxxxxxxP', 'Property Lawyer', 'I specialize in property law, offering legal services related to property transactions, development, and dispute resolution, ensuring my clients property interests are well-protected.
My expertise includes advising on residential and commercial property matters, from contract drafting to litigation, with a focus on achieving favorable outcomes for my clients.','1960-02-28','22 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');

use lawyers;
insert into lawyer_details (law_name, law_email, law_contact, specification, about, Dob, experience, photo)
Values
('Q', 'Q@gmail.com', 'xxxxxxxxxxQ', 'Contract Lawyer', 'As a dedicated contract lawyer, I bring a meticulous and strategic approach to all aspects of contract management. My expertise includes commercial contracts, employment agreements, and partnership agreements, ensuring that my clients achieve clear, enforceable, and favorable terms in all their contractual dealings.','1965-05-09','22 years','https://www.freepik.com/free-photos-vectors/lawyer-character/15');


