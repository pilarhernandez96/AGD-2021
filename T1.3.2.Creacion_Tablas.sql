DROP TABLE IF EXISTS "Role";
CREATE TABLE [Role] (
  [id_role] Int primary key,
  [Role] Varchar(100),
);

DROP TABLE IF EXISTS job_family_role;
CREATE TABLE [job_family_role] (
  [ID_Job_family_role] Int primary key,
  [id_job_family] Int,
  [job_family] Varchar(100),
  [id_role] Int,
);

DROP TABLE IF EXISTS Industry_Job;
CREATE TABLE [Industry_Job] (
  [ID_Industry_Job] Int primary key,
  [id_Indt] Int,
  [id_job_family] Int,
);

DROP TABLE IF EXISTS industry;
CREATE TABLE [industry] (
  [id_Indt] Int primary key,
  [Industry] Varchar(50),
);

DROP TABLE IF EXISTS geography_industry;
CREATE TABLE [geography_industry] (
  [ID_geography_industry] Int primary key,
  [id_State] Int,
  [State] Varchar(2),
  [id_Indt] Int
);

DROP TABLE IF EXISTS Tasas_Empleo;
CREATE TABLE [Tasas_Empleo] (
  [ID] Int primary key,
  [post_date] Date,
  [id_State] Int,
  [id_Indt] Int,
  [id_job_family] Int,
  [id_role] Int,
  [count_id_indexed] float,
);