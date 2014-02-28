 CREATE OR REPLACE FORCE VIEW "RMAN_COMMON"."RC_RMAN_BACKUP_SUBJOB_DETAILS" ("OPERATION", "INPUT_TYPE", "STATUS", "SESSION_STAMP") AS 
  SELECT operation,
    input_type,
    status,
    SESSION_STAMP
  FROM catcerityv.rc_rman_backup_subjob_details
  UNION ALL
  SELECT operation,
    input_type,
    status,
    SESSION_STAMP
  FROM catwatfis.rc_rman_backup_subjob_details
  UNION ALL
  SELECT operation,
    input_type,
    status,
    SESSION_STAMP
  FROM CATKIRA.RC_RMAN_BACKUP_SUBJOB_DETAILS
  UNION ALL
  SELECT operation,
    input_type,
    status,
    SESSION_STAMP
  FROM catedmsfis.rc_rman_backup_subjob_details;