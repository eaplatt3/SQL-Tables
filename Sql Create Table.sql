create table professor(
	professor_id char(7),
	professor_name varchar2(200) not null,
	professor_office char (7),
	professor_phone_num char(10),
	constraint professor_id_pk primary key(professor_id)
);

insert into professor(professor_id, professor_name) values('R000001', "M. Burns");
insert into professor(professor_id, professor_name) values('R000002', "FDR");

create table student(
	student_name varchar2(200) not null,
	student_id char(4),
	student_major char(3),
	student_ssn char(11) not null,
	student_phone_number char(12),
	constraint student_id_pk primary key(student_id),
	constraint student_ssn_uq unique(student_ssn)
	);
	
create table enrollment(
	enrollment_dept char(3),
	enrollment_course char(3),
	enrollment_year	char(4),
	enrollment_course_id char(6),
	enrollment_student_id_fk char(4),
	enrollment_grade int, --This is nullable: until you get a grade its null
	constraint enrollment_yr_cid_ram_pk primary key(enrollment_year, enrollment_course_id, enrollment_student_id_fk),
	constraint enrollment_student_id_fk foreign key(enrollment_student_id_fk) references student(student_id)	
	);

	