# Pewlett Hackard Analysis

## Project 
This project uses uses six employee data tables from Pewlett Hackard to analyze the large number of employees approaching retirement age, the future staffing needs of the company, and possible proactive steps the company could take to prepare for the coming "silver tsunami".  

### Purpose 
This analysis takes a deeper dive into 
 - the group of employee approaching retirement age by looking at their job titles to assess the work groups that will be impacted by the retirements
 - employees outside of the retirement group who could be eligible for a mentorship program to prepare them for the roles that will become vacant with the retirements 

### Tools used for this project
The tools used for this project include QuickDBD's ERD for database table planning, pgAdmin and PostgreSQL for database manipulation and table creation used in the analysis.

## Overview of the analysis
### Retiring employees by title
Using an inner join between the employees table and the titles table, and filtering by a target age range based on birth dates, a new table was created that allows an analysis of the employees approaching retirement age with their job titles.  This table was then refined to remove duplicates and include only the job titles currently held by this group of retiring employees. Then the number of employees for each group were counted as shown in the table below.
![Retiring employees by title][https://github.com/bnidam/Pewlett-Hackard-Analysis/blob/main/Retiring_count_by_title.png]

### Mentorship eligibility
A list of candidate employees with their titles and departments for a mentorship program was created in a new table Using an inner join between the employees table, the departments table, and the titles tables, then filtering by a target age range based on birth dates. 

## Results
From the two new tables, we know the following:
    - From the total employees currently employed by Pewlett-Hackard, just under 25% of the workforce will reach retirement age in the next few years. 
        Total employees                                 300,024
        Employees approaching retirement age            72,458
        % of total employees approaching retirement age 24.2%

    - While the bulk of the retirements will affect Senior positions, Engineers and Staff, there are only 2 Managers approaching retirement. 

    - Only 1,549 employees meet the mentorship program criteria.

    - If every employee who meets the mentorship program actually completes the program and steps into a role being vacated by retirement, this would only fill 2.1% of these positions, leaving just under  71,000 positions open. 

## Summary
By creating a new table showing the breakdown of the 1,549 employees that meet the mentorship program criteria by title (shown below), 
![mentorship program employees by title][https://github.com/bnidam/Pewlett-Hackard-Analysis/blob/main/mentor_count_by_title.png]

we can combine these numbers with the retiring employees by title table (shown above) to do some analysis.
![Employees retiring and mentorship program by title][https://github.com/bnidam/Pewlett-Hackard-Analysis/blob/main/Comb_retirecount_mentorcount_title.png]

We've already determined that  72,458, or 24.2%, positions are currently held by employees approaching retirement. Replacing this number of employees will have an enormous impact on Pewlett-Hackard.

Half (50%) of the employees approaching retirement age are engineers (36,291): Senior Engineers, Engineers, and Assistant Engineers by title. Senior Engineers make up 71% of all engineers approaching retirement. Staff positions are second largest group approaching retirement age, numbering 32,562 or 45%. Senior Staff makes up 76.5% of all staff approaching retirement. 

Let's consider the engineers that meet the mentorship criteria and already have the same job titles. Senior Engineers will fill less than 1% of the Senior Engineer positions that will become vacant through retirement, leaving 99.3% of those positions open. The outlook for Engineers and Assistant Engineers is similar. Even if Engineers and Assistant Engineers can move up through the mentorship program to Senior Engineers, this will still leave 25,168 Senior Engineer positions open and create more positions to fill at the Engineer and Assistant Engineer level. Staff positions are in a similar situation with fewer mentorship program eligible employees than retirement openings to fill.

The ratio of employees of all titles to mentor the employees identified for the mentorship program is very high: 46.8 to 1. For the 2 largest groups, Senior Engineers and Senior Staff, the ratios of retirement-ready to program mentee are also quite high at 34.6 to 1 and 34.4 to 1. There should be enough retirement-ready employees to mentor the next generation, as well as some new hires.




