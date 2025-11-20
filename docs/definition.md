<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – policy_kms_keys

KMS key assignments per encryption policy. PRIMARY KEY (policy_id, kms_key_id).

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| policy_id | BIGINT | NO | — | Policy (FK encryption_policies.id). |  |
| kms_key_id | BIGINT | NO | — | KMS key (FK kms_keys.id). |  |
| weight | INTEGER | NO | 1 | Weight for selection algorithms. |  |
| priority | INTEGER | NO | 0 | Priority (higher first). |  |