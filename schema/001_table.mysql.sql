-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  policy_kms_keys

CREATE TABLE IF NOT EXISTS policy_kms_keys (
  policy_id BIGINT UNSIGNED NOT NULL,
  kms_key_id BIGINT UNSIGNED NOT NULL,
  weight INT NOT NULL DEFAULT 1,
  priority INT NOT NULL DEFAULT 0,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (policy_id, kms_key_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
