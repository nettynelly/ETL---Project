-- Table: public."new_planAttributes"

DROP TABLE public."new_planAttributes";

CREATE TABLE public."new_planAttributes"
(
    "BusinessYear" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "HIOSProductId" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "MarketCoverage" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "MetalLevel" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "NetworkId" character varying(100) COLLATE pg_catalog."default" NOT NULL,
    "StateCode" character varying(100) COLLATE pg_catalog."default" NOT NULL,
	"DiseaseManagementProgram" character varying (300) 
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."new_planAttributes"
    OWNER to postgres;