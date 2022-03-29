
Select *
From Divvy_Trips_2019..Divvy_Trips_2019_Q1

Select Ride_length_Converted, CONVERT(Time,Ride_length)
From Divvy_Trips_2019..Divvy_Trips_2019_Q1

Update Divvy_Trips_2019_Q1
SET Ride_length = CONVERT(Time,Ride_length)

ALTER TABLE Divvy_Trips_2019_Q1
ADD Ride_length_Converted Time;

Update Divvy_Trips_2019_Q1
SET Ride_length_Converted = CONVERT(Time,Ride_length)

Select *
From Divvy_Trips_2019..Divvy_Trips_2019_Q1
Where Trip_ID is not null
Order by 2,3

Select User_type, COUNT(User_type) as CountUser_Type
From Divvy_Trips_2019..Divvy_Trips_2019_Q1
Where User_type is not null
Group By User_type

Select Day_of_week, COUNT(Day_of_week) as CountDayOfWeek
From Divvy_Trips_2019..Divvy_Trips_2019_Q1
Group By Day_of_week
Order By Day_of_week

Select Gender, COUNT(Gender) as CountGender
From Divvy_Trips_2019..Divvy_Trips_2019_Q1
Where Gender is not null
Group By Gender

Select Day_of_week, User_type, Gender, COUNT(User_type) as CountUser_type
From Divvy_Trips_2019..Divvy_Trips_2019_Q1
Where Gender is not null
Group By Day_of_week, User_type, Gender
Order By Day_of_week, User_type