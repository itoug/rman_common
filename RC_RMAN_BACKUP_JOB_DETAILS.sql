CREATE OR REPLACE FORCE VIEW "RMAN_COMMON"."RC_RMAN_BACKUP_JOB_DETAILS" ("DB_NAME", "START_TIME", "END_TIME", "STATUS", "TIME_TAKEN_DISPLAY", "OUTPUT_BYTES_DISPLAY", "OUTPUT_DEVICE_TYPE", "SESSION_KEY", "SESSION_RECID", "SESSION_STAMP", "INPUT_TYPE") AS 
  SELECT db_name,
    start_time,
    end_time,
    status,
    time_taken_display,
    output_bytes_display,
    output_device_type,
    session_key,
    session_recid,
    session_stamp,
    INPUT_TYPE
  FROM catcerityv.rc_rman_backup_job_details
  UNION ALL
  SELECT db_name,
    start_time,
    end_time,
    status,
    time_taken_display,
    output_bytes_display,
    output_device_type,
    session_key,
    session_recid,
    session_stamp,
    INPUT_TYPE
  FROM catwatfis.rc_rman_backup_job_details
  UNION ALL
  SELECT db_name,
    start_time,
    end_time,
    status,
    time_taken_display,
    output_bytes_display,
    output_device_type,
    session_key,
    session_recid,
    session_stamp,
    INPUT_TYPE
  FROM CATKIRA.RC_RMAN_BACKUP_JOB_DETAILS
  UNION ALL
  SELECT db_name,
    start_time,
    end_time,
    status,
    time_taken_display,
    output_bytes_display,
    output_device_type,
    session_key,
    session_recid,
    session_stamp,
    INPUT_TYPE
  FROM catedmsfis.rc_rman_backup_job_details;
