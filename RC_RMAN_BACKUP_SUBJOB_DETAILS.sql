 CREATE OR REPLACE FORCE VIEW "RMAN_COMMON"."RC_RMAN_BACKUP_SUBJOB_DETAILS" ("OPERATION", "INPUT_TYPE", "STATUS", "SESSION_STAMP") AS 
  SELECT operation,
    input_type,
    status,
    SESSION_STAMP
  FROM PROD1.rc_rman_backup_subjob_details
  UNION ALL
  SELECT operation,
    input_type,
    status,
    SESSION_STAMP
  FROM PROD2.rc_rman_backup_subjob_details
  UNION ALL
  SELECT operation,
    input_type,
    status,
    SESSION_STAMP
  FROM PROD3.RC_RMAN_BACKUP_SUBJOB_DETAILS
  UNION ALL
  SELECT operation,
    input_type,
    status,
    SESSION_STAMP
  FROM PROD4.rc_rman_backup_subjob_details;