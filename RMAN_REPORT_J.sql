CREATE OR REPLACE FORCE VIEW "RMAN_COMMON"."RMAN_REPORT_J" ("DB_NAME", "BACKUP_OBJECT", "TARGET_DEVICE", "STATUS", "BACKUPSIZE_MB", "BACKUPSPEEDPERSEC_MB", "TIME_TAKEN", "BACKUP_BEGIN", "BACKUP_END", "SESSION_RECID") AS 
  SELECT db_name ,
    input_type ,
    output_device_type ,
    status,
        round(output_bytes/1024/1024,2) as output_bytes_mb ,
    round(output_bytes_per_sec/1024/1024,2) as output_bytes_per_sec  ,
    time_taken_display,
  cast(start_time as date) as start_time ,
    cast(end_time as  date) as end_time ,
    SESSION_RECID
  FROM PROD1.rc_rman_backup_job_details PROD1
  WHERE start_time > sysdate - 7
  UNION ALL
  SELECT db_name ,
    input_type ,
    output_device_type ,
    status,
      round(output_bytes/1024/1024,2) as output_bytes_mb ,
    round(output_bytes_per_sec/1024/1024,2) as output_bytes_per_sec  ,
    time_taken_display,
  cast(start_time as date) as start_time ,
    cast(end_time as  date) as end_time ,
    SESSION_RECID
  FROM PROD2.rc_rman_backup_job_details PROD2
  WHERE start_time > sysdate - 7
  UNION ALL
  SELECT db_name ,
    input_type ,
    output_device_type ,
    status,
    round(output_bytes/1024/1024,2) as output_bytes_mb ,
    round(output_bytes_per_sec/1024/1024,2) as output_bytes_per_sec  ,
    time_taken_display ,
  cast(start_time as date) as start_time ,
    cast(end_time as  date) as end_time ,
    SESSION_RECID
  FROM PROD3.RC_RMAN_BACKUP_JOB_DETAILS PROD3
  UNION ALL
  SELECT db_name ,
    input_type ,
    output_device_type ,
    status,
      round(output_bytes/1024/1024,2) as output_bytes_mb ,
    round(output_bytes_per_sec/1024/1024,2) as output_bytes_per_sec  ,
    time_taken_display,
  cast(start_time as date) as start_time ,
    cast(end_time as  date) as end_time ,
    SESSION_RECID
  FROM PROD4.RC_RMAN_BACKUP_JOB_DETAILS PROD4
  WHERE start_time > sysdate - 7
  ORDER BY session_recid;