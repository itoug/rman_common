grant select on PROD1.rc_rman_output to rman_common;
grant select on PROD2.rc_rman_output to rman_common;
grant select on PROD3.rc_rman_output to rman_common;
grant select on PROD4.rc_rman_output to rman_common; 
  
  CREATE OR REPLACE FORCE VIEW "RMAN_COMMON"."RC_RMAN_OUTPUT" ("DB_NAME", "RSR_KEY", "SESSION_KEY", "RECID", "STAMP", "OUTPUT") AS 
  SELECT 'PROD1' as DB_NAME,
 RSR_KEY,
 SESSION_KEY,
 recid,
 stamp,
 output
  FROM PROD1.rc_rman_output
union all
 SELECT 'PROD2' as DB_NAME,
 RSR_KEY,
 SESSION_KEY,
 recid,
 stamp,
 output
  FROM PROD2.rc_rman_output
union all
  SELECT 'PROD3' as DB_NAME,
 RSR_KEY,
 SESSION_KEY,
 recid,
 stamp,
 output
  FROM PROD3.rc_rman_output
union all
 SELECT 'PROD4' as DB_NAME,
 RSR_KEY,
 SESSION_KEY,
 recid,
 stamp,
 output
 FROM PROD4.rc_rman_output;
