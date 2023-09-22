DROP TABLE campaign;
DROP TABLE contact;
DROP TABLE category;
DROP TABLE subcategory;

CREATE TABLE campaign (
    "cf_id" integer PRIMARY KEY,
    "contact_id" integer   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" text NOT NULL,
    "goal" float NOT NULL,
    "pledged" float NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar(50)   NOT NULL,
    "currency" varchar(50)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(50)   NOT NULL,
    "subcategory_id" varchar(50)   NOT NULL
);

CREATE TABLE "contact" (
    "contact_id" integer PRIMARY KEY,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(50)   NOT NULL
);

CREATE TABLE "category" (
    "category_id" varchar(50) PRIMARY KEY,
    "category" varchar(50)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(50) PRIMARY KEY,
    "subcategory" varchar(50)   NOT NULL
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contact" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategor_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");



