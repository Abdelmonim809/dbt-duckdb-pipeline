SELECT
     job_location ,
     cOUNT(*) AS postings

FROM
     {{ ref('job_posting') }}
GROUP BY
     job_location
ORDER BY
     postings DESC
limit 10