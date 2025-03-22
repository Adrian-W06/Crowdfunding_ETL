CREATE TABLE contacts (
contact_id INT, 
first_name varchar(255),
last_name varchar(255),
email varchar(255)
);
SELECT * FROM contacts;	

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY, 
    contact_id INT,
    company_name VARCHAR(255),
    description VARCHAR(255),
    goal DECIMAL(12,2),
    pledged DECIMAL(12,2),
    backers_count INT,
    country VARCHAR(5),
    currency VARCHAR(5),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id VARCHAR(10)
);

COPY public.campaign (cf_id, contact_id, company_name, description, goal, pledged, backers_count, country, currency, launch_date, end_date, category_id)
FROM 'C:/Repos/CROWDF~2/STARTE~1/RESOUR~1/campaign.csv' 
DELIMITER ',' CSV HEADER QUOTE '"' ESCAPE '"'
ENCODING 'UTF8';

CREATE TABLE category (
	category_id VARCHAR(10),
	category VARCHAR(255)
);

COPY category (category_id, category)
FROM 'C:/Repos/CROWDF~2/STARTE~1/RESOUR~1/category.csv'
DELIMITER ',' 
CSV HEADER;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(255),
	subcategory VARCHAR(255)
);

COPY subcategory (subcategory_id, subcategory)
FROM 'C:\Repos\Crowdfunding_ETL\Starter_Files\Resources\subcategory.csv'
DELIMITER ',' 
CSV HEADER;

