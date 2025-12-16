-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  policy_kms_keys

ALTER TABLE policy_kms_keys ADD CONSTRAINT fk_policy_kms_keys_policy FOREIGN KEY (policy_id) REFERENCES encryption_policies(id) ON DELETE CASCADE;

ALTER TABLE policy_kms_keys ADD CONSTRAINT fk_policy_kms_keys_key FOREIGN KEY (kms_key_id) REFERENCES kms_keys(id) ON DELETE CASCADE;
