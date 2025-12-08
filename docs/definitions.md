# policy_kms_keys

KMS key assignments per encryption policy. PRIMARY KEY (policy_id, kms_key_id).

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| kms_key_id | BIGINT | NO |  | KMS key (FK kms_keys.id). |
| policy_id | BIGINT | NO |  | Policy (FK encryption_policies.id). |
| priority | INTEGER | NO | 0 | Priority (higher first). |
| weight | INTEGER | NO | 1 | Weight for selection algorithms. |

## Engine Details

### mysql

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_policy_kms_keys_key | kms_key_id | kms_keys(id) | ON DELETE CASCADE |
| fk_policy_kms_keys_policy | policy_id | encryption_policies(id) | ON DELETE CASCADE |

### postgres

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_policy_kms_keys_key | kms_key_id | kms_keys(id) | ON DELETE CASCADE |
| fk_policy_kms_keys_policy | policy_id | encryption_policies(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_policy_kms_keys | mysql | algorithm=MERGE, security=INVOKER | [packages\policy-kms-keys\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/policy-kms-keys/schema/040_views.mysql.sql) |
| vw_policy_kms_keys | postgres |  | [packages\policy-kms-keys\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/policy-kms-keys/schema/040_views.postgres.sql) |
