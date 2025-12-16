-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
-- engine: postgres
-- table:  policy_kms_keys

-- Contract view for [policy_kms_keys]
CREATE OR REPLACE VIEW vw_policy_kms_keys AS
SELECT
  policy_id,
  kms_key_id,
  weight,
  priority,
  created_at,
  updated_at
FROM policy_kms_keys;
