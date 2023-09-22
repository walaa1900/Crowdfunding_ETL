-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/TNzNyy
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "campaign" (
    "cf_id" integer   NOT NULL,
    "contact_id" integer   NOT NULL,
    "companyname" varchar(50)   NOT NULL,
    "description" varchar(50)   NOT NULL,
    "goal" integer   NOT NULL,
    "pledged" integer   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" integer   NOT NULL,
    "country" varchar(50)   NOT NULL,
    "currency" varchar(50)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(50)   NOT NULL,
    "subcategor_id" varchar(50)   NOT NULL
);

CREATE TABLE "contact" (
    "contact_id" integer   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(50)   NOT NULL
);

CREATE TABLE "category" (
    "category_id" varchar(50)   NOT NULL,
    "category" varchar(50)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(50)   NOT NULL,
    "subcategory" varchar(50)   NOT NULL
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contact" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategor_id" FOREIGN KEY("subcategor_id")
REFERENCES "subcategory" ("subcategory_id");

