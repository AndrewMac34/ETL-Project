# ETL-Project
The project is to use the data source with real and fake job postings to try to identify possible fake job postings in another data source of Data Scientist job postings.

Data Sources:
	Both data source are from Keggle website
	1. fake_job_postings.csv
	   This data source contain 18,000 job postings which 800 are already identified as fake (field: fraudulent = 1)
        2. data_scientist_united_states_job_postings_jobspikr
	   This data source contains 10,000 Data Scientist Job Postings from USA.
Cleaning:
	1. Flatten the location data from from fake_job_postings to have separate columns for city, state, and country.
	2. Trim the country column to fit state, city, and total rows in dataframe by using a while loop.
	3. Drop unnecessary columns from fake job postings and data scientist job postings.
	4. search each word in each job title via regular expression to evaluate if any words matched 5 key words.  The key words were 
	programmer, analyst, developer, engineer, and technician.  If any of the words in a given job title matched any of these key 
	words, a boolean of True was assigned.  Anything not true was listed as NaN.

Steps:
	1. Count how many times each word shows in fake postings description (fake_job_postings.description where fraudulent = 1)
	2. Count how many times each word shows in real postings description (fake_job_postings.description where fraudulent = 0)
	3. Identify 50 most frequent words in fake postings that are not present in the description of real job postings.
		(this was an arbritary criteria to limit the number of words to check)
	4. Assign weight for those 50 words by using the average of the times that those words are in fake postings
	5. Sum the weight of the fake words that apper in description (data_scientist_united_states_job_postings_jobspikr.job_description)
		if the sum of the weight is over a trashold (arbitrary 1.3) the job posting is considered possible fake Data Scientist job posting

Considerations and Assumptions:
	Counting words that show only in descriptions of fake job postings, but not in real job postings
		That was an creative way to bypass the ignorance of adding cognitive algorithims to do the job
	Limit the number of words to 50
		That was a rational way to avoid going thru high volume of words with not so significant weight
	Trashold 
		That was another big guess/assumption. Anyway the treshold is a parameter and can easyly be changed for simulations

