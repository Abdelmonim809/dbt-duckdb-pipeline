SELECT
    DATE_TRUNC('month', search_date) AS month,
    search_term as role,
    COUNT(*) AS postings
FROM {{ ref('job_posting') }}
GROUP BY month, role
order by month, role