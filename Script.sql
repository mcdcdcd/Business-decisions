-- Ensure data consistency in invoices
BEGIN TRANSACTION; 

UPDATE Invoice 
SET BillingState =
CASE 
    WHEN BillingCountry = "USA" THEN "NC"
    WHEN BillingCountry = "Canada" THEN "SK"
    WHEN BillingCountry = "Brazil" THEN "CE"
    WHEN BillingCountry = "Argentina" THEN "CD"
    WHEN BillingCountry = "Australia" THEN "NSW"
    WHEN BillingCountry = "Austria" THEN "NÖ"
    WHEN BillingCountry = "Belgium" THEN "BRU"
    WHEN BillingCountry = "Germany" THEN "HB"
    WHEN BillingCountry = "Portugal" THEN "PBB"
    WHEN BillingCountry = "United Kingdom" THEN "LV"
    ELSE "NA"
END
WHERE BillingState IS NULL; 

ROLLBACK;  -- Prevents accidental updates, can be replaced with COMMIT when ready.

-- Assign random composers to missing values in the Track table
BEGIN TRANSACTION;

UPDATE Track 
SET Composer =
CASE RANDOM() % 5  -- Generates a random value between 0 and 4
    WHEN 0 THEN "Nicola Compensar"
    WHEN 1 THEN "Ana Salvarmenta Piijka"
    WHEN 2 THEN "Lobito"
    WHEN 3 THEN "Conelak Kioport"
    WHEN 4 THEN "Salome Hernandez"
    ELSE "Alejito Moreno"
END
WHERE Composer IS NULL;

ROLLBACK;  -- Can be replaced with COMMIT once validated.
