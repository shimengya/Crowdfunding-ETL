# Crowdfunding-ETL
## Summary for this project

In this project, I have used both an ETL process on this dataset and a data analysis by using SQL queries to better provide the information of crowdfunding.

## Process Steps
1. Similiar to the previous project, it is important to build up relationships between each index. 
![crowdfunding_db_relationships](/crowdfunding_db_relationships.png)

2. In this Challenge, Python, Pandas, and Jupyter notebooks were used to do the extract and transform phases. Specifically, it extracts and transforms the backers’ contact information from a CSV file to create a DataFrame that will be exported as a CSV file. [backer_info](/backer_info.csv)

3. Then it does the load phase. Specifically, it uses the dataset to create an ERD and a table schema for creating a new table in the crowdfunding_db database. 

4. And, it uploads the CSV file that contains the backers’ information into this table. 
  - We only select "live" campaign

5. Finally, it performs a data analysis on the crowdfunding_db database by using SQL queries.

- Ordered by remaining goal amount, the csv provides name and email at the same time as contact information.
[email_contacts_remaining_goal_amount](/email_contacts_remaining_goal_amount.csv)

- Ordered by last name, the result provides not only contact information but also campaign information with the remaining goal amount.
[email_backers_remaining_goal_amount](/email_backers_remaining_goal_amount.csv)
