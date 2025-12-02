-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  policy_kms_keys

CREATE TABLE IF NOT EXISTS policy_kms_keys (
  policy_id BIGINT NOT NULL,
  kms_key_id BIGINT NOT NULL,
  weight INTEGER NOT NULL DEFAULT 1,
  priority INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (policy_id, kms_key_id)
);
