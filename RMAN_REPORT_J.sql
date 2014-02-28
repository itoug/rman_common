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
  FROM catcerityv.rc_rman_backup_job_details cty1
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
  FROM catwatfis.rc_rman_backup_job_details WAT
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
  FROM CATKIRA.RC_RMAN_BACKUP_JOB_DETAILS JDE
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
  FROM CATEDMSFIS.RC_RMAN_BACKUP_JOB_DETAILS EDMS
  WHERE start_time > sysdate - 7
  ORDER BY session_recid;