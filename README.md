# Homework 6

## Part 1 - Database Design Notes

I chose an auto-increment primary key for all my tables as I found it to be the most convenient and efficient way to store data. I also don't believe there are any tables that are not in the third normal form.

Person:
I created a Person table to include the basic information about each person which must be recorded when the file is created. I addded a 'flagged' attribute there as well which will be initially set to 0 but can be updated anytime any issues with that individual occur. The issues do not have to be specifically related to returning a scooter late or damaging it and hence it makes the most sense to include it in this table.

Contact_Info:
Just to have easier access to an each person's contact information and to in case it is confidential and needs to be kept private, I stored it in a separate table from the Person table.

Referral:
I decided to create a referral table of because not every individual will be referred by someone who has borrowed a scooter before and also because this table requires two foreign keys to ensure the customer and the person that they were referred by have already do exist in the database. It is a one-to-many relationship for both foreign keys because each individual can be referred by many people and each person can also refer many people.

Borrowed:
The borrowed table has a many-to-one relationship with the Person table because each person can borrow a bike multiple times and hence the borrowed table will record all transactions that have ever occured. It has a returned flag to know which scooters have been returned yet or not.

Freeform_notes:
This table has a one-to-many relationship with the Borrowed table because each transaction can have many notes which may come up during the period the scooter is borrowed at different times or after the scooter has  been returned.

Returned:
I first included my Returned table in my Borrowed table 
but then ended up creating a different table to further normalize that table as I did not want the user to update those values separately at different intervals. Each borrowed scooter is only returned once so there is only a one-to-one relationship.

Scooters:
My scooter table has a one-to-many relationship with the Borrowed table because once the scooter has been returned it can be re-borrowed so each scooter can appear in the borrowed table multiple times.

Manufacturer:
I decided to include the range, weight and topspeed in the manufacturer table instead of the scooter table because I assumed that if the manufacturer and the model number is the same for a particular scooter then all scooters with the same manufacturer and model_number will have the same range, weight and topspeed so this method will help to reduce redundancy in the data.

Some of the assumptions I made were deciding the attributes that I should use in the Manufacturer table, deciding the basis of the flagged attribute in the Person table, and the frequency of the freeform_notes.

## Part 2 - Data Source Documentation 

Source: Wikipedia, Hebbar's Kitchen, Archana's Kitchen
Collection methodology: Web Scraping
License: Data files © Original Authors
Dataset owner: Neha Prabhavalkar
Expected update frequency: Annually
Last updated: 2020-09-30
Date created: 2020-09-09
Current version: Version 2