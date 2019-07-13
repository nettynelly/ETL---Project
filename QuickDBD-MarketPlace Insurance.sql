-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/QDYvVX
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "new_planAttributes" (
    "CSRVariationType" varchar   NOT NULL,
    "HIOSProductId" varchar   NOT NULL,
    "MarketCoverage" varchar   NOT NULL,
    "MetalLevel" text   NOT NULL,
    "NetworkId" int   NOT NULL,
    "StateCode" varchar   NOT NULL
);

CREATE TABLE "new_network" (
    "StateCode" varchar   NOT NULL,
    "IssuerId" varchar   NOT NULL,
    "NetworkId" varchar   NOT NULL,
    "NetworkName" text   NOT NULL,
    "NetworkURL" text   NOT NULL
);

CREATE TABLE "clean_rate" (
    "StateCode" varchar   NOT NULL,
    "IssuerId" varchar   NOT NULL,
    "PlanId" varchar   NOT NULL,
    "Age" varchar   NOT NULL,
    "IndividualRate" varchar   NOT NULL
);

CREATE TABLE "dentalshop2018" (
    "StateCode" varchar   NOT NULL,
    "FIPSCountyCode" varchar   NOT NULL,
    "CountyName" varchar   NOT NULL,
    "MetalLevel" varchar   NOT NULL,
    "IssuerName" varchar   NOT NULL,
    "HIOSIssuerID" varchar   NOT NULL,
    "PlanID" varchar   NOT NULL,
    "PlanType" varchar   NOT NULL
);

CREATE TABLE "new_healthshop2018" (
    "StateCode" varchar   NOT NULL,
    "FIPSCountyCode" varchar   NOT NULL,
    "CountyName" varchar   NOT NULL,
    "MetalLevel" varchar   NOT NULL,
    "IssuerName" varchar   NOT NULL,
    "HIOSIssuerID" varchar   NOT NULL,
    "PlanID" varchar   NOT NULL,
    "PlanMarketingName" varchar   NOT NULL,
    "PlanType" varchar   NOT NULL,
    "IndividualStandard" varchar   NOT NULL,
    "FamilyStandard" varchar   NOT NULL,
    "FamilyPerPersonStandard" varchar   NOT NULL
);

CREATE TABLE "new_health" (
    "PlanType" varchar   NOT NULL,
    "StateCode" varchar   NOT NULL,
    "PlanMarketingName" varchar   NOT NULL,
    "PlanID" varchar   NOT NULL,
    "IndividualStandard" varchar   NOT NULL,
    "FamilyStandard" varchar   NOT NULL,
    "FamilyPerPersonStandard" varchar   NOT NULL
);

CREATE TABLE "new_dental" (
    "PlanType" varchar   NOT NULL,
    "StateCode" varchar   NOT NULL,
    "PlanMarketingName" varchar   NOT NULL,
    "PlanID" varchar   NOT NULL,
    "IndividualStandard" varchar   NOT NULL,
    "FamilyStandard" varchar   NOT NULL,
    "FamilyPerPersonStandard" varchar   NOT NULL
);

ALTER TABLE "new_planAttributes" ADD CONSTRAINT "fk_new_planAttributes_NetworkId" FOREIGN KEY("NetworkId")
REFERENCES "new_network" ("NetworkId");

ALTER TABLE "new_network" ADD CONSTRAINT "fk_new_network_IssuerId" FOREIGN KEY("IssuerId")
REFERENCES "clean_rate" ("IssuerId");

ALTER TABLE "clean_rate" ADD CONSTRAINT "fk_clean_rate_PlanId" FOREIGN KEY("PlanId")
REFERENCES "new_health" ("PlanID");

ALTER TABLE "dentalshop2018" ADD CONSTRAINT "fk_dentalshop2018_HIOSIssuerID" FOREIGN KEY("HIOSIssuerID")
REFERENCES "new_healthshop2018" ("HIOSIssuerID");

ALTER TABLE "new_health" ADD CONSTRAINT "fk_new_health_PlanID" FOREIGN KEY("PlanID")
REFERENCES "new_healthshop2018" ("PlanID");

ALTER TABLE "new_dental" ADD CONSTRAINT "fk_new_dental_PlanID" FOREIGN KEY("PlanID")
REFERENCES "new_health" ("PlanID");

