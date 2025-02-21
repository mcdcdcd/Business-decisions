Ensuring Data Consistency: Handling NULL Values in Invoices and Tracks
Problem Statement
Incomplete or missing data (NULL values) can cause major issues in business intelligence reports, data analytics, and decision-making processes. This script addresses missing values in two key areas:

BillingState in the Invoice Table:

- Ensures that all invoices have a valid BillingState by assigning values based on the BillingCountry.
- This is important for regional sales analysis, tax calculations, and reporting.

Composer in the Track Table:
- Assigns a random composer name for missing values to ensure data completeness.
- This is crucial for music metadata accuracy and recommendation algorithms in streaming platforms.
