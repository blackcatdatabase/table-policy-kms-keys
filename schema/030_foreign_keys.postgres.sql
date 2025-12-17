-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  policy_kms_keys

ALTER TABLE policy_kms_keys ADD CONSTRAINT fk_policy_kms_keys_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;

ALTER TABLE policy_kms_keys ADD CONSTRAINT fk_policy_kms_keys_key FOREIGN KEY (kms_key_id) REFERENCES kms_keys(id) ON DELETE CASCADE;
