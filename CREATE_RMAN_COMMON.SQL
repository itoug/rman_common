CREATE USER rman_common IDENTIFIED BY rman_common
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP"
ACCOUNT UNLOCK ;

grant create session, unlimited tablespace, create view to rman_common identified by rman_common;


grant select on PROD1.rc_rman_backup_job_details to rman_common;
grant select on PROD2.rc_rman_backup_job_details to rman_common;
grant select on PROD3.rc_rman_backup_job_details to rman_common;
grant select on PROD4.rc_rman_backup_job_details to rman_common;

grant select on PROD1.rc_rman_backup_subjob_details to rman_common;
grant select on PROD2.rc_rman_backup_subjob_details to rman_common;
grant select on PROD3.rc_rman_backup_subjob_details to rman_common;
grant select on PROD4.rc_rman_backup_subjob_details to rman_common;

grant select on PROD1.rc_rman_status to rman_common;
grant select on PROD2.rc_rman_status to rman_common;
grant select on PROD3.rc_rman_status to rman_common;
grant select on PROD4.rc_rman_status to rman_common;
