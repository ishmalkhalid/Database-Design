-- queries
#List all people (names are adequate) that have flags in any sort order
SELECT * FROM Person WHERE flagged = 1;

#List all available scooters in any sort order
SELECT s.idScooter FROM Scooters s WHERE s.idScooter NOT IN (SELECT s.idScooter FROM Scooters s INNER JOIN Borrowed b ON b.idScooter = s.idScooter WHERE b.returned = 0);

#List all scooters (scooter model and manufacturer, along with person's name… and when they're due back) that are being borrowed in order of when they're due back ordered by when whey were due increasing (that is, earlier ones appear first, and more recent ones appear later)
SELECT m.model_number, m.manufac_name, p.first_name, p.last_name, b.return_date FROM Manufacturer m INNER JOIN Scooters s ON m.idManufacturer = s.idManufacturer INNER JOIN Borrowed b ON b.idScooter = s.idScooter INNER JOIN Person p ON b.user_id = p.user_id WHERE b.returned = 0 ORDER BY b.return_date;

#List the top 5 people (names and number of referrals) that have the most referrals sorted by most referrals descending
SELECT name_of_borrower, COUNT(name_of_borrower) AS tot_referrals FROM Referral GROUP BY name_of_borrower ORDER BY tot_referrals DESC LIMIT 5;

#Given a unique identifier for a person, show all of the dates that person has borrowed a scooter in chronological order (from the first time they borrowed a scooter to the most recent)
SELECT b.borrow_date FROM Person p INNER JOIN Borrowed b ON p.user_id = b.user_id WHERE b.user_id = 1 ORDER BY b.borrow_date;


#List all of the manufacturers of scooters in your database, even if you don't currently have any of their scooters in your inventory
SELECT * FROM Manufacturers;