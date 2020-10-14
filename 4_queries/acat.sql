SELECT cohorts.name as name, avg(assistance_requests.completed_at - assistance_requests.started_at) as aat
FROM assistance_requests
JOIN students ON student_id=students.id
JOIN teachers ON teacher_id=teachers.id
JOIN cohorts ON cohorts.id=cohort_id
GROUP BY cohorts.name
ORDER BY cohorts.name DESC;
