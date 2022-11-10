--CHALLENGE
--TABLE 1 - Retirement Titles table (January 1, 1952 and December 31, 1955).

SELECT * FROM employees;

SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

--Table 3
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

--Deliverable 2
--Mentorship Eligibility table

SELECT DISTINCT ON(e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
			INNER JOIN titles AS t
				ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no ASC;

SELECT * FROM mentorship_eligibility;	

-- Additional Analysis for Summary
-- Count mentorship candidates by title
SELECT COUNT(me.emp_no), me.title
INTO mentor_by_title
FROM mentorship_eligibility as me
GROUP BY title
ORDER BY count DESC;

SELECT * FROM mentor_by_title;

-- Join the 2 count tables by title
SELECT rt.count as r_count,
		rt.title,
		mt.count as m_count,
		mt.title,
INTO combined_titles
FROM retiring_titles as rt
FULL JOIN mentor_by_title as mt
ON rt.title = mt.title


SELECT * FROM combined_titles;



	