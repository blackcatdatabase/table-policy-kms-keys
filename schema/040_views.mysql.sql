-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  policy_kms_keys

-- Contract view for [policy_kms_keys]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_policy_kms_keys AS
SELECT
  policy_id,
  kms_key_id,
  weight,
  priority
FROM policy_kms_keys;
