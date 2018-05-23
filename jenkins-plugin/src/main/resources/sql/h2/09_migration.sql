ALTER TABLE JENKINS_JOB ALTER COLUMN JENKINS_MASTER_ID SET NOT NULL;

DROP INDEX IDX_JENKINS_JOB;

CREATE UNIQUE INDEX IDX_JENKINS_JOB on JENKINS_JOB (JENKINS_MASTER_ID, FULL_NAME);

UPDATE VERSION SET VERSION = 9;
