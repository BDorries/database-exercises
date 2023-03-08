USE ymir_billie;

#table for users
    #user_id
    #email
    #password

alter table users
    add column password varchar(50) not null;

#table for ads
    #ad_no -PK
    #title
    #description
create table ads(
  ad_no int auto_increment,
  title varchar(50),
  description varchar(5000),
  primary key (ad_no)
);

#table for categories
    #category_no
    #name

create table categories(
    category_no int auto_increment,
    name varchar(50),
    primary key (category_no)
);

#j-table for ads to categories
    #ad_no
    #category_no
CREATE TABLE ads_categories
(
    ad_no int NOT NULL,
    category_no int NOT NULL,
    CONSTRAINT PK_ads_categories PRIMARY KEY
    (
        ad_no,
        category_no
    ),
    FOREIGN KEY (ad_no) REFERENCES ads (ad_no),
    FOREIGN KEY (category_no) REFERENCES categories (category_no)
);

insert into categories(name)
values
    ('help wanted'),
    ('freebie'),
    ('for sale'),
    ('wanted');

# Can't think about sql anymore. I'm done. The exercise says to
# plan out the db but not actually write it

# The ads table has a M:M relationship with categories which necessitates
# an assoc table (ads_categories).

#The users table has a 1:M relationship with ads table

