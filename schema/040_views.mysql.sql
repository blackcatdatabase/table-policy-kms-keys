-- Auto-generated from schema-views-mysql.yaml (map@sha1:A4E10261DACB7519F6FEA44ED77A92163429CA5E)
-- engine: mysql
-- table:  policy_kms_keys

-- Contract view for [policy_kms_keys]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_policy_kms_keys AS
SELECT
  policy_id,
  kms_key_id,
  weight,
  priority,
  created_at,
  updated_at
FROM policy_kms_keys;
