COPY fake_job_postings(job_number,job_id,title,location,department,description,requirements,
employment_type,experience,education,industry,function,fraudulent,country,city,state)

FROM './cleaned_fake_jobs.csv' DELMITER ',' CSV HEADER;

COPY fake_tech_job_postings(job_id,job_title,category,city,state,country,job_description,job_type) DELMITER ',' CSV HEADER

FROM './cleaned_jobs.csv' DELIMITER ',' CSV HEADER;
