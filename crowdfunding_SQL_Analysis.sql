-- Challenge Bonus queries.
-- 1. (2.5 pts)
-- Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns. 

SELECT backers_count, cf_id
FROM campaign
-- where (end_date > '2022-10-18');
WHERE outcome = 'live'
ORDER BY backers_count DESC



-- 2. (2.5 pts)
-- Using the "backers" table confirm the results in the first query.

SELECT COUNT(backer_id) AS count_backer_id, cf_id
FROM backer
GROUP BY cf_id
ORDER BY count_backer_id DESC

-- 3. (5 pts)
-- Create a table that has the first and last name, and email address of each contact.
-- and the amount left to reach the goal for all "live" projects in descending order. 

SELECT co.first_name, co.last_name, co.email, (ca.goal - ca.pledged) as remaining_goal_amount
-- remaining_goal_amount = ca.goal - ca.pledged 
INTO email_contacts_remaining_goal_amount
FROM campaign AS ca
LEFT JOIN contacts AS co
ON ca.contact_id = co.contact_id
WHERE (ca.outcome = 'live')
ORDER BY remaining_goal_amount DESC

SELECT * FROM campaign

-- Check the table
SELECT * FROM email_contacts_remaining_goal_amount;

-- 4. (5 pts)
-- Create a table, "email_backers_remaining_goal_amount" that contains the email address of each backer in descending order, 
-- and has the first and last name of each backer, the cf_id, company name, description, 
-- end date of the campaign, and the remaining amount of the campaign goal as "Left of Goal". 


SELECT b.email, 
		b.first_name, 
		b.last_name, 
		ca.cf_id, 
		ca.company_name, 
		ca.description, 
		ca.end_date, 
		(ca.goal - ca.pledged) as left_of_goal
INTO email_backers_remaining_goal_amount
FROM campaign AS ca
LEFT JOIN backer AS b
ON ca.cf_id = b.cf_id
WHERE (ca.outcome = 'live')
ORDER BY b.last_name;

-- Check the table
SELECT * FROM email_backers_remaining_goal_amount

