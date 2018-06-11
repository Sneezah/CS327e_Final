create table crime_type (
  type_of_crime varchar(30) NOT NULL,
  CONSTRAINT pk_type_of_crime PRIMARY KEY (type_of_crime)
);

create table Tweets (
  tweet_id varchar(32) generated always 
     as (json_unquote(json_extract(tweet_doc, '$.id_str'))) stored primary key,
  screen_name varchar(32) generated always 
     as (json_unquote(json_extract(tweet_doc, '$.user.screen_name'))) stored,
  tweet varchar(200) generated always
	 as (json_unquote(json_extract(tweet_doc, '$.text'))) stored,
  created_at datetime generated always 
     as (str_to_date(json_unquote(json_extract(tweet_doc, '$.created_at')), 
     '%a %b %d %H:%i:%s +0000 %Y')) stored,
  tweet_doc json,
  type_of_crime varchar(30),
  FOREIGN KEY (type_of_crime) REFERENCES crime_type(type_of_crime)
);