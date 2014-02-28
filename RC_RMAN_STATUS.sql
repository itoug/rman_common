  CREATE OR REPLACE FORCE VIEW "RMAN_COMMON"."RC_RMAN_STATUS" ("ROW_LEVEL", "OPERATION", "OBJECT_TYPE", "STATUS", "SESSION_KEY", "SESSION_RECID") AS 
  SELECT row_level,
    operation,
    object_type,
    status,
    session_key,
    SESSION_RECID
  FROM catcerityv.rc_rman_status
  UNION ALL
  SELECT row_level,
    operation,
    object_type,
    status,
    session_key,
    SESSION_RECID
  FROM catkira.rc_rman_status
  UNION ALL
  SELECT row_level,
    operation,
    object_type,
    status,
    session_key,
    SESSION_RECID
  FROM CATWATFIS.RC_RMAN_STATUS
  UNION ALL
  SELECT row_level,
    operation,
    object_type,
    status,
    session_key,
    SESSION_RECID
  FROM CATEDMSFIS.RC_RMAN_STATUS;