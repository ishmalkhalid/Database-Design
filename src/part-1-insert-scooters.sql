-- insert into Person
INSERT INTO Person 
(user_id, first_name, last_name, date_file_created, borrowed_before, flagged) 
VALUES 
(1, "Ishmal", "Khalid", "2020/02/11", 0, 0),
(2, "Lucas", "Thomas", "2018/05/23", 0, 0),
(3, "Zoha", "Khalid", "2005/12/07", 0, 1);

-- insert into Contact_info
INSERT INTO Contact_Info
(contactID, user_id, email_address, cell_phone, home_address)
VALUES
(1, 1, "gy123@gmail.com", "0567234", "22 Street"),
(2, 2, "hy765@gmail.com", "0937434", "98 Street"),
(3, 3, "fy426@gmail.com", "0842422", "34 Street");

-- insert into Borrowed
INSERT INTO Borrowed 
(borrow_id, borrow_date, return_date, idScooter, returned, user_id, idReturn)
VALUES
(1, "2005/11/07", "2005/11/08", 1, 1, 3, 1),
(2, "2018/05/23", "2018/06/23", 2, 1, 2, 2),
(3, "2020/02/11", "2020/03/11", 3, 1, 1, 3);

-- insert into Referral
INSERT INTO Referral 
(referID, user_referredID, name_of_borrower, name_of_referrer, referrerID)
VALUES
(1, 1, "Ishmal", "Zoha", 3),
(2, 1, "Ishmal", "Lucas", 2),
(3, 2, "Lucas", "Zoha", 3);

-- insert into Freeform_notes
INSERT INTO Freeform_notes
(freeformID, borrow_id, notes, return_condition, malfunction, other)
VALUES 
(1, 1, "The scooter does not meet its stated max range while it's out", "slightly used", NULL, NULL),
(2, 3, "Scooter returned with handle grips missing", "used", "YES", NULL);

-- insert into Return
INSERT INTO Returned
(idReturn, date_returned, is_late, damaged)
VALUES
(1, "2006/11/08", 1, "Brakes not working"),
(2, "2018/06/22", 0, "No"),
(3, "2020/03/02", 0, "No");

-- insert into Scooters
INSERT INTO 
(idScooter, scondition, idManufacturer)
VALUES
(1, "slightly used", 1),
(2, "slightly used", 1),
(3, "slightly used", 2);

-- insert into Manufacturer
INSERT INTO Manufacturer
(idManufacturer, manufac_name, manufac_country, model_number, srange, sweight, topspeed)
VALUES
(2, "Thompson", "UAE", "2345", 25.4, 12.0, 23.0),
(1, "Honda", "China", "89765", 35.9, 19.9, 29.0),
(3, "Shell", "Oman", "7284", 56.0, 9.0, 31.5);