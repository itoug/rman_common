 CREATE OR REPLACE FORCE VIEW "RMAN_COMMON"."RMAN_REPORT" ("DB_NAME   ", "Backup Object            ", "Target Device     ", "Status", "Backup Size     ", "Backup Speed per Sec      ", "Time Taken       ", "Backup Begin      ", "Backup End         ", "SESSION_RECID") AS 
  SELECT db_name ,
    input_type ,
    output_device_type ,
    status,
    output_bytes_display ,
    output_bytes_per_sec_display ,
    time_taken_display,
    start_time ,
    end_time ,
    SESSION_RECID
  FROM "username_db_catalog".rc_rman_backup_job_details db_catalog1
  WHERE start_time > sysdate - 7
  UNION ALL
  SELECT db_name ,
    input_type ,
    output_device_type ,
    status,
    output_bytes_display ,
    output_bytes_per_sec_display ,
    time_taken_display,
    start_time ,
    end_time ,
    SESSION_RECID
  FROM "username_db_catalog".rc_rman_backup_job_details db_catalog2
  WHERE start_time > sysdate - 7
  UNION ALL
  SELECT db_name ,
    input_type ,
    output_device_type ,
    status,
    output_bytes_display ,
    output_bytes_per_sec_display ,
    time_taken_display ,
    start_time ,
    end_time ,
    SESSION_RECID
  FROM "username_db_catalog".RC_RMAN_BACKUP_JOB_DETAILS db_catalog3
  UNION ALL
  SELECT db_name ,
    input_type ,
    output_device_type ,
    status,
    output_bytes_display ,
    output_bytes_per_sec_display ,
    time_taken_display,
    start_time ,
    end_time ,
    SESSION_RECID
  FROM "username_db_catalog"S.RC_RMAN_BACKUP_JOB_DETAILS db_catalog4
  WHERE start_time > sysdate - 7
  ORDER BY session_recid;