-- Auto-generated from schema-views-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  policy_kms_keys

-- Contract view for [policy_kms_keys]
CREATE OR REPLACE VIEW vw_policy_kms_keys AS
SELECT
  policy_id,
  kms_key_id,
  weight,
  priority
FROM policy_kms_keys;
