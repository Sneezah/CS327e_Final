drop database if exists CrimeCrash;
create database CrimeCrash;
use CrimeCrash;
drop table if exists Crimes, Fatal_Crashes, Motor_Vehicle, Motorcycle, Bicycle, Crimes_X_Crashes;
create table Crimes(
	incident_number varchar(20) NOT NULL,
    time_of_crime int(4),
	type_of_crime varchar(30),
    address varchar(200),
    CONSTRAINT pk_incident_number PRIMARY KEY (incident_number),
    FOREIGN KEY (type_of_crime) REFERENCES crime_type(type_of_crime)
);
create table Fatal_Crashes(
	case_number varchar(20) NOT NULL,
    time_of_crash char(5),
    road_type varchar(200),
	crash_type varchar(200),
    address varchar(200),
    CONSTRAINT pk_case_number PRIMARY KEY (case_number)
);
create table Motor_Vehicle(
	case_number varchar(20) NOT NULL,
    restrainment varchar(200),
    dlicense_status varchar(200),
    CONSTRAINT pk_case_number PRIMARY KEY (case_number),
    FOREIGN KEY (case_number) REFERENCES Fatal_Crashes (case_number)
);
create table Motorcycle(
	case_number varchar(20) NOT NULL,
    helmet varchar(200),
    mlicense_status varchar(200),
	CONSTRAINT pk_case_number PRIMARY KEY (case_number),
    FOREIGN KEY (case_number) REFERENCES Fatal_Crashes (case_number)
);
create table Bicycle(
	case_number varchar(20) NOT NULL,
    helmet varchar(200),
    CONSTRAINT pk_case_number PRIMARY KEY (case_number),
    FOREIGN KEY (case_number) REFERENCES Fatal_Crashes (case_number)
);
create table Crimes_X_Crashes(
	incident_number varchar(20) NOT NULL,
    case_number varchar(20) NOT NULL,
    address varchar(200) NOT NULL,
    CONSTRAINT pk_x PRIMARY KEY (incident_number, case_number),
    FOREIGN KEY (incident_number) REFERENCES Crimes (incident_number),
    FOREIGN KEY (case_number) REFERENCES Fatal_Crashes (case_number),
    FOREIGN KEY (address) REFERENCES fatal_crashes (address)
);