# csci422-sql-assgnmt

This assignment will exercise your ability to design a star schema analytical data model using SQL.  It will also explore creating Azure resources using a PowerShell script instead of manually in the Azure portal. The database and data created as part of this assignment will be used in the next assignment on Power BI.

## Azure setup
In the AzureSetup subfolder, there is a PowerShell script and a configuration file.  You will need to edit the configuration file to map to your subscription and have unique names for the Azure resources.  Please watch the video posted to Blackboard for more background on the setup process as well as a walkthrough to follow for this assignment.

## Database setup
In the CreateTransactionalDB subfolder, there is a SQL script that will create the source database with data.  For reference, there is a picture of the schema in the same folder.  Please watch the video posted to Blackboard for more background and a walkthrough covering the database setup process.

## Analytical data modeling task
We are acting as data engineers for the business analyst team at Northwinds.  The analyst want us to enable insights on order information, specifically the order details or lines.  

The analysts desire to query the order details based on:
- Order details - price, quantity, discount, date
- Product - name, quantity per unit, unit price
- Product supplier - company name, region, country, active date
- Product category - category name
- Customer - company name, region, and country
- Order shipper - Company name
- Order employee - name, title, country

The analyst wants to do some analysis based on the product supplier as they plan to change suppliers for some products in the future.  To support this, the supplier dimension should support slowly changing dimensions (SCD) using the Type 2 pattern.

This assignment is a design exercise as you don't have to implement the star schema in SQL and transfer data to it. 

## What to do and hand in

### Azure setup - 25 points
After executing the PowerShell script, take screenshots of the resulting resource group and the table structure in the SQL instance (15 points).  Name the files ResourceGroup.png (jpg) and SQLTableStructure.png (jpg) and place in the Evidence folder.  You can use either the Azure portal Query Editor (preview) or a local tool such as SSMS or Azure Data Explorer for the table structure.

To practice some T-SQL skills and provide evidence of a successful data load, write a query that does the following (10 points):
- Lists all employees with the title 'Sales Representative' that support territories in Region 4. 
- Has an output format with the columns:  EmployeeID, Name, Title, TerritoryID, TerritoryDescription, RegionID
    - Note that Name should contain the first and last name of the employee (separated by a space).  

Place the following in the Evidence folder:
- The SQL query in a file named Region4Query.sql.
- The results of the query in CSV format in a file named Region4SalesReps.csv.

### Star schema creation - 25 points
Your goal is to create a star schema (note - not snowflake) with a single fact table.  The fact table name should be prefixed with FACT_.  The dimension tables should be prefixed with DIM_.  The only required fields in the tables are the ones that support the analyst requirements listed above.

Use an appropriate software tool to create your star schema.  The suggested default choice is draw.io (https://app.diagrams.net/) as this is used in CSCI 366 and has a free option, but other tools are acceptable as long as you can deliver an image of the schema.

In the Evidence folder, place an image of the diagram of your star schema.  The schema should contain table names, a list of columns in each table, and the relationships between the tables.  Given the simplicity of a star schema, no particular notation for the relationships is required.  Name the file Schema.png (or jpg).

In addition to the diagram, create a text document (Word, txt, pdf, etc) that provides clarifications on your star schema design.  At a minimum, this text document should describe how you implemented the Type 2 pattern to fulfill the analyst's goal for supplier changes.  Name the file SchemaNotes.txt (or docx, pdf, etc) and place in the Evidence folder.

In summary, your Evidence folder should contain (see above for variations in the file types):
- ResourceGroup.png
- SQLTableStructure.png
- Region4Query.sql
- Region4SalesReps.csv
- Schema.png
- SchemaNotes.txt

Remember to commit all changes to the repo and push the code to 'main'.  There's no need to submit anything to the Blackboard assignment.

If needed, updates or clarifications will be posted on the discussion forum after the assignment is created.