# Definition – policy_kms_keys

KMS key assignments per encryption policy.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| policy_id | BIGINT UNSIGNED | NO | — | Policy (FK encryption_policies.id). |  |
| kms_key_id | BIGINT UNSIGNED | NO | — | KMS key (FK kms_keys.id). |  |
| weight | INT | NO | 1 | Weight for selection algorithms. |  |
| priority | INT | NO | 0 | Priority (higher first). |  |
