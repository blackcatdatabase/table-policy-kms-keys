-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  policy_kms_keys

CREATE TABLE IF NOT EXISTS policy_kms_keys (
  policy_id BIGINT NOT NULL,
  kms_key_id BIGINT NOT NULL,
  weight INTEGER NOT NULL DEFAULT 1,
  priority INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (policy_id, kms_key_id)
);
