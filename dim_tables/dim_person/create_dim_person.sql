CREATE TABLE dim_person (
    person_id UUID PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    date_of_birth DATE,
    gender VARCHAR,
    updated_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_by VARCHAR,
    created_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR
);
