CREATE DATABASE OurExerciseDb ON PRIMARY
(NAME = 'OurExDb', FILENAME = 'C:\MySQLServer\OurExDb.mdf',
SIZE = 24MB,MAXSIZE = 32MB,FILEGROWTH = 8MB)
LOG ON
(NAME = 'OurExDblog', FILENAME='C:\MySQLServer\OurExDblog.ldf')

COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table StudentRegistrations
(StudentId int not null,
CourseCode nvarchar(50) not null,
RegistrationDate Date not null
constraint pk_oed primary key (StudentId,CourseCode))

INSERT INTO StudentRegistrations (StudentId, CourseCode, RegistrationDate)
VALUES
    (101, 'C#101','07/07/2023'),
    (102, 'Psych102', '06/06/2023'),
    (103, 'AstroPhy103', '05/05/2023'),
    (104, 'Literature104', '04/04/2023'),
    (105, '.NET105', '03/03/2023');

	Select * from StudentRegistrations

