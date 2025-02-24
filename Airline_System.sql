create database Airlines_System
On Primary
(name='Main',
filename='C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\main.mdf'),
filegroup "fileGP1"
(name='FG1',
filename='C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\.FG1.ndf')
log on 
(name='LogFile',
filename='C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\LOG.ldf')
GO
Use Airlines_System
GO
create table Passenger_Details
(Passenger_ID varchar(30) not null,
First_Name varchar(50) not null,
Middle_Name varchar(50) null,
Last_Name varchar(50) null,
Gender char(15) not null,
Date_Of_Birth Date not null,
Contact_Number nvarchar(20) not null,
Emergency_Contact_Number nvarchar(20) null,
Email_ID varchar(30) null,
[UID] nvarchar(30) not null,
Passport_Number varchar(30) not null,
Address_ID varchar(30),
Primary key (Passenger_ID))
GO

Create table City
(CityID varchar(10) not null,
CityName varchar(30) not null,
Primary Key (CityID))
GO

Create table States
(StateID varchar(10) not null,
StateName varchar(30) null,
Primary Key (StateID))
GO

Create table Country
(CountryID varchar(10) not null,
CountryName varchar(30) not null,
Primary key (CountryID))
GO

Create table Region
(RegionID varchar(10) not null,
RegionName varchar(30) not null,
Primary Key (RegionID))
GO

Create table Parents_Details
(Parent_ID varchar(30) not null,
Passenger_ID varchar(30) not null,
Father_Name varchar(70) null,
Mother_Name varchar(70) null,
Father_UID nvarchar(30) not null,
Mother_UID nvarchar(30) not null,
Father_Contact_No nvarchar(20) null,
Mother_Contact_No nvarchar(20) null,
Primary Key (Parent_ID),
Foreign key (Passenger_ID) references Passenger_details(Passenger_ID))
GO

create table Airlines
(Airline_ID varchar(30) not null,
Airline_Name varchar(50) not null,
Country varchar(30) not null,
Logo Image null,
Primary key (Airline_ID))
GO

create table Bookings
(Booking_ID varchar(30) not null,
Booking_DateTime DateTime null,
Booking_Status varchar(30) check (Booking_Status in ('Confirmed','Cancelled','Pending'))
Primary key (Booking_ID))
GO

Create table Payments
(Payment_ID varchar(30) not null,
Payment_Date DateTime null,
Payment_Method varchar(30) check(Payment_Method in ('UPI','Cash','DebitCard','CreditCard','NetBanking')),
Payment_Amount money,
Payment_Status varchar(15) check(Payment_Status in ('Recieved','Pending')),
Primary key (Payment_ID))
GO

Create table Loyality_Programs
(Loyality_Program_ID varchar(30) not null,
Loyality_Program_Name varchar(70) null,
Tier_Levels varchar(10),
Primary key(Loyality_Program_ID))
GO

Create table Flight_Attendeds
(Flight_Attended_ID varchar(30) not null,
First_Name varchar(30) not null,
Middle_Name varchar(30) null,
Last_Name varchar(50) null,
Gender char(15) not null,
Date_Of_Birth Date not null,
Contact_Number nvarchar(20) not null,
Emergency_Contact_Number nvarchar(20) null,
Email_ID varchar(30) null,
[UID] nvarchar(30) not null,
Passport_Number varchar(30) not null,
Experience float null,
[Rank] varchar(30) not null,
Primary key (Flight_Attended_ID))
GO

Create table Pilot_City
(CityID varchar(10) not null,
CityName varchar(30) not null,
Primary Key (CityID))
GO

Create table Pilot_States
(StateID varchar(10) not null,
StateName varchar(30) null,
Primary Key (StateID))
GO

Create table Pilot_Country
(CountryID varchar(10) not null,
CountryName varchar(30) not null,
Primary key (CountryID))
GO

Create table Pilot_Region
(RegionID varchar(10) not null,
RegionName varchar(30) not null,
Primary Key (RegionID))
GO

Create table Pilot_Address
(Pilot_Address_ID varchar(30) not null,
FlatNo varchar(10) null,
StreetNo varchar(10) null,
CityID varchar(10) not null,
StateID varchar(10) null,
RegionID varchar(10) not null,
CountryID varchar(10) not null,
Primary key (Pilot_Address_ID),
foreign key (CityID) references Pilot_City(CityID),
foreign key (StateID) references Pilot_States(StateID),
foreign key (RegionID) references Pilot_Region(RegionID),
foreign key (CountryID) references Pilot_Country(CountryID))
GO

Create table Pilots
(Pilot_ID varchar(30) not null,
First_Name varchar(30) not null,
Middle_Name varchar(30) null,
Last_Name varchar(50) null,
Gender char(15) not null,
Date_Of_Birth Date not null,
Personal_Contact_Number nvarchar(20) null,
Official_Contact_Number nvarchar(20) not null,
Personal_Email_ID varchar(30) null,
Official_Email_ID varchar(30) not null,
Pilot_Address_ID varchar(30),
Primary Key (Pilot_ID),
Foreign key (Pilot_Address_ID) references Pilot_Address(Pilot_Address_ID))
GO

Create table Passenger_Address
(Address_ID varchar(30) not null,
Passenger_ID varchar(30) not null,
FlatNo varchar(10) null,
StreetNo varchar(10) null,
CityID varchar(10) not null,
StateID varchar(10) null,
RegionID varchar(10) not null,
CountryID varchar(10) not null,
Primary key (Address_ID),
foreign key (Passenger_ID) references Passenger_Details(Passenger_ID),
foreign key (CityID) references City(CityID),
foreign key (StateID) references States(StateID),
foreign key (RegionID) references Region(RegionID),
foreign key (CountryID) references Country(CountryID))
GO

Create table Airport_Area
(AreaID varchar(10) not null,
AreaName varchar(30) not null,
Primary Key (AreaID))
GO

Create table Airport_City
(CityID varchar(10) not null,
CityName varchar(30) not null,
Primary Key (CityID))
GO

Create table Airport_States
(StateID varchar(10) not null,
StateName varchar(30) null,
Primary Key (StateID))
GO

Create table Airport_Country
(CountryID varchar(10) not null,
CountryName varchar(30) not null,
Primary key (CountryID))
GO

Create table Airport_Region
(RegionID varchar(10) not null,
RegionName varchar(30) not null,
Primary Key (RegionID))
GO

Create table Airport_Address
(Airport_Address_ID varchar(30) not null,
AreaID varchar(10) not null,
CityID varchar(10) not null,
StateID varchar(10) null,
RegionID varchar(10) not null,
CountryID varchar(10) not null,
Primary key (Airport_Address_ID),
foreign key (AreaID) references Airport_Area(AreaID),
foreign key (CityID) references Airport_City(CityID),
foreign key (StateID) references Airport_States(StateID),
foreign key (RegionID) references Airport_Region(RegionID),
foreign key (CountryID) references Airport_Country(CountryID))
GO

Create table Airports
(Airport_Id varchar(30) not null,
Airport_Name varchar(50) not null,
Airport_Address_ID varchar(30) not null,
website varchar(30) null,
Contact_Number nvarchar(20) not null,
Email_ID varchar(30) not null,
Primary key (Airport_Id),
foreign key (Airport_Address_ID) references Airport_Address(Airport_Address_ID))
GO


create table Flights
(Flight_ID varchar(30) not null,
Airline_ID varchar(30) not null,
Departure_Airport_ID varchar(30) not null,
Departure_DateTime datetime not null,
Arrival_Airport_ID varchar(30) not null,
Arrival_DateTime datetime null,
Number_Of_Stops int null,
Seat_Capacity int not null,
Aircraft_Type varchar(80) not null,
[Status] varchar(20) check([Status] in ('Scheduled','Delayed','Cancelled')),
Primary Key (Flight_ID),
Foreign key (Airline_ID) references Airlines(Airline_ID),
Foreign key (Departure_Airport_ID) references Airports(Airport_ID),
Foreign key (Arrival_Airport_ID) references Airports(Airport_ID))
GO

create table Tickets
(Ticket_No varchar(30) not null,
Flight_ID varchar(30) not null,
Class varchar(10) check(Class in ('First','Economy','Bussiness')),
Primary Key (Ticket_No),
foreign key (Flight_ID) references Flights(Flight_ID))
GO

Create table Reservations
(Reservation_ID varchar(30) not null,
Passenger_Id varchar(30),
Flight_Id varchar(30),
Booking_Id varchar(30),
Ticket_No varchar(30),
Payment_ID varchar(30),
Primary key (Reservation_ID),
foreign key (Passenger_ID) references Passenger_Details(Passenger_ID),
foreign key (Flight_ID) references Flights(Flight_ID),
foreign key (Booking_ID) references Bookings(Booking_ID),
foreign key (Ticket_No) references Tickets(Ticket_No),
foreign key (Payment_ID) references Payments(Payment_ID))
GO

Create table Seat_Assignments
(Seat_Assignments_ID varchar(30) not null,
Reservation_ID varchar(30),
Seat_No varchar(5) not null,
Primary key (Seat_Assignments_ID),
Foreign key (Reservation_ID) references Reservations(Reservation_ID))
GO

Create table Baggage
(Baggage_ID varchar(30) not null,
Reservation_ID varchar(30),
Baggage_Type varchar(20) check(Baggage_Type in ('Checked','Carry-on')),
[Weight] float not null,
Primary key (Baggage_ID),
Foreign key (Reservation_ID) references Reservations(Reservation_ID))
GO

Create table Freqent_Flyer_Miles
(Freqent_Flyer_Id varchar(30) not null,
Passenger_Id varchar(30) ,
Loyality_Program_ID varchar(30),
Miles_Earned float,
Miles_Redeemed float,
Primary key (Freqent_Flyer_Id),
foreign key (Passenger_ID) references Passenger_Details(Passenger_ID),
foreign key (Loyality_Program_ID) references Loyality_Programs(Loyality_Program_ID))
GO

Create table Runways
(Runway_Id varchar(30) not null,
Airport_ID varchar(30),
[Length] float not null,
width float not null,
Surface_Type varchar(20) not null,
Orientation varchar(20) not null,
Primary key (Runway_ID),
foreign key (Airport_ID) references Airports(Airport_ID))
GO

Create table Terminals
(Terminal_ID varchar(30) not null,
Airport_Id varchar(30),
Terminal_Name varchar(30) not null,
Gates int not null,
[Check-In_Counters] int,
Security_Screening varchar(30),
Primary key (Terminal_Id),
foreign key (Airport_ID) references Airports(Airport_ID))
GO

Create table Parkings
(Parking_ID varchar(30) not null,
Airport_ID varchar(30) not null,
Parking_Types varchar(15) check(Parking_Types in ('Short-term','Long-term')),
Capacity int not null,
Rates float null,
Primary key (Parking_ID),
foreign key (Airport_ID) references Airports(Airport_ID))
GO

Create table Passenger_Amenities
(Amenity_ID varchar(30) not null,
Airport_ID varchar(30) not null,
Amenity_Name varchar(70) not null,
[Type] varchar(20),
[Description] varchar(70) not null,
[Location] varchar(50) check([Location] in ('Terminal','Gate','Concourse')),
Primary key (Amenity_ID),
foreign key (Airport_ID) references Airports(Airport_ID))
GO

Create table Amenity_Contact_Information
(Contact_Info_ID varchar(30) not null,
Amenity_ID varchar(30) not null,
Contact_Number nvarchar(20) not null,
Email_ID varchar(30),
Primary key (Amenity_ID),
foreign key (Amenity_ID) references Passenger_Amenities(Amenity_ID))
GO

Create table Amenity_Opening_Hours
(Opening_Hours_ID varchar(30) not null,
Amenity_ID varchar(30) not null,
Day_Of_week int not null,
Opening_Time time not null,
Closing_Time time not null,
Primary key (Opening_Hours_ID),
foreign key (Amenity_ID) references Passenger_Amenities(Amenity_ID))
GO

Create table Amenity_Rating_and_Reviews
(Review_ID varchar(30) not null,
Amenity_ID varchar(30),
Passenger_Id varchar(30),
Rating float null,
Review_Text text null,
Review_Date Date null,
Primary key (Review_ID),
foreign key (Amenity_ID) references Passenger_Amenities(Amenity_ID),
foreign key (Passenger_ID) references Passenger_Details(Passenger_ID))
GO

Create table Waiting_Halls
(Waiting_Hall_ID varchar(30) not null,
Airport_ID varchar(30) not null,
[Location] varchar(50) not null,
Capacity int not null,
Seating_Arrangement varchar(20) not null,
Primary key (Waiting_Hall_ID),
foreign key (Airport_ID) references Airports(Airport_ID))
Go

Create table Waiting_Halls_Opening_Hours
(Opening_Hours_ID varchar(30) not null,
Waiting_Hall_ID varchar(30) not null,
Day_Of_week int not null,
Opening_Time time not null,
Closing_Time time not null,
Primary key (Opening_Hours_ID),
foreign key (Waiting_Hall_ID) references Waiting_Halls(Waiting_Hall_ID))
GO

Create table Waiting_Halls_Cleaning_Schedules
(Cleaning_Schedule_ID varchar(30) not null,
Waiting_Hall_ID varchar(30) not null,
Frequency float,
Cleaning_Time time,
Primary key (Cleaning_Schedule_ID),
foreign key (Waiting_Hall_ID) references Waiting_Halls(Waiting_Hall_ID))
GO

Create table Waiting_Halls_Maintenance_Records
(Maintenance_Record_ID varchar(30) not null,
Waiting_Hall_ID varchar(30) not null,
Maintenance_Date date,
Maintenance_Type varchar(30),
[Description] text,
Primary key (Maintenance_Record_ID),
foreign key (Waiting_Hall_ID) references Waiting_Halls(Waiting_Hall_ID))
GO

Create table Weather
(Weather_ID varchar(30) not null,
Airport_ID varchar(30) not null,
[Timestamp] time not null,
temperature float not null,
Wind_Speed float not null,
Wind_Direction varchar(15) not null,
Precipitation float not null,
Visibility float not null,
Primary key (Weather_ID),
foreign key (Airport_ID) references Airports(Airport_ID))
GO

Create table Pilot_Licenses_and_Certifications
(License_Cert_ID varchar(30) not null,
Pilot_ID varchar(30) not null,
License_Type varchar(30) not null,
Issuing_Authority varchar(70) not null,
Expiration_Date Date not null,
Employment_Details text not null,
Primary key (License_Cert_ID),
foreign key (Pilot_ID) references Pilots(Pilot_ID))
GO

Create table Pilot_Airline_Affiliations
(Affiliation_ID varchar(30) not null,
Pilot_ID varchar(30) not null,
Airline_ID varchar(30) not null,
[Start_Date] date not null,
End_Date date not null,
Primary key (Affiliation_ID),
foreign key (Pilot_ID) references Pilots(Pilot_ID),
foreign key (Airline_ID) references Airlines(Airline_ID))
GO

Create table Pilot_Flight_Assignments
(Assignment_ID varchar(30) not null,
Pilot_ID varchar(30) not null,
Flight_ID varchar(30) not null,
[Date] Date not null,
Departure_Airport varchar(70) not null,
Arrival_Airport varchar(70) not null,
Primary key (Assignment_ID),
foreign key (Pilot_ID) references Pilots(Pilot_ID),
foreign key (Flight_ID) references Flights(Flight_ID))
GO

Create table Pilot_Salary_History
(Salary_History_ID varchar(30) not null,
Pilot_ID varchar(30) not null,
Effective_Date Date not null,
Salary money not null,
Primary key (Salary_History_ID),
foreign key (Pilot_ID) references Pilots(Pilot_ID))
GO

Create table Pilot_Training_Records
(Training_Record_ID varchar(30) not null,
Pilot_ID varchar(30) not null,
Training_Type varchar(30) not null,
Training_Provider varchar(30) not null,
Completion_Date Date not null,
Certificate_Number varchar(30) not null,
Primary key (Training_Record_ID),
foreign key (Pilot_ID) references Pilots(Pilot_ID))
GO

Create table Pilot_Qualifications
(Qualification_ID varchar(30) not null,
Pilot_ID varchar(30) not null,
Qualification_Name varchar(50) not null,
Issuing_Authority varchar(50) not null,
Expiration_Date date not null,
Performance_Data varchar(80),
Primary key (Qualification_ID),
foreign key (Pilot_ID) references Pilots(Pilot_ID))
GO

Create table Pilot_Performance_Evaluations
(Evaluation_ID varchar(30) not null,
Pilot_ID varchar(30) not null,
Evaluation_Date date not null,
Overall_Rating float,
Specific_Feedback text,
primary key (Evaluation_ID),
foreign key (Pilot_ID) references Pilots(Pilot_ID))
GO

SELECT COUNT(*) 
from INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE'