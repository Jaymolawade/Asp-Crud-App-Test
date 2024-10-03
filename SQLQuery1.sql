create table EmployeeDetails 
(
	EMPID INT PRIMARY KEY ,
	EMP_NAME VARCHAR(50) NOT NULL,
	EMP_EMAIL VARCHAR(75)UNIQUE,
	EMP_STATE VARCHAR(25),
	EMP_SAL INT CHECK(EMP_SAL>10000)

);

INSERT INTO EmployeeDetails VALUES('Jay Molawade','jaymolawade@gmail.com',75000);
INSERT INTO EmployeeDetails VALUES('Prathamesh Mandala','prathameshmandala@gmail.com',85000);
INSERT INTO EmployeeDetails VALUES('Suraj Raud','surajraud@gmail.com',100000);
INSERT INTO EmployeeDetails VALUES('Pravin Kale','pravinkale@gmail.com',65000);
INSERT INTO EmployeeDetails VALUES('Hardik Maity','hardikmaity@gmail.com',93000);
INSERT INTO EmployeeDetails VALUES('Virendra Sonavale','virendrasonavale@gmail.com',50000);
INSERT INTO EmployeeDetails VALUES('Komal Yadav','komdi27@gmail.com',95000);
INSERT INTO EmployeeDetails VALUES('Prajwal Wakhcoure','pdon491@gmail.com',60000);

SELECT * FROM EmployeeDetails;