<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\PolicyKmsKeys\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Bez logiky; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class PolicyKmsKeyDto {
    public function __construct(
        public readonly int $policyId,
        public readonly int $kmsKeyId,
        public readonly int $weight,
        public readonly int $priority
    ) {}

    /** Vhodné pro serializaci/logování (bez velkých blobů). */
    public function toArray(): array {
        return get_object_vars($this);
    }
}
