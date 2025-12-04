-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  policy_kms_keys

ALTER TABLE policy_kms_keys ADD CONSTRAINT fk_policy_kms_keys_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;

ALTER TABLE policy_kms_keys ADD CONSTRAINT fk_policy_kms_keys_key FOREIGN KEY (kms_key_id) REFERENCES kms_keys(id) ON DELETE CASCADE;
