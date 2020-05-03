CREATE TABLE fake_job_postings (
	job_number int NOT NULL
	job_id int NOT NULL
	title varchar
	location varchar
	department varchar
	description varchar
	requirements varchar
	employment_type varchar
	experience varchar
	education varchar
	industry varchar
	function varchar
	fraudulent varchar
	country varchar
	city varchar
	state varchar
	PRIMARY KEY (job_id)
);

CREATE TABLE fake_tech_postings (
	job_id int NOT NULL
	title varchar
	category varchar
	city varchar
	state varchar
	country varchar
	description varchar
	type varchar
	PRIMARY KEY (job_id)
);


