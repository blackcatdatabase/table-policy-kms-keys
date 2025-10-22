<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\PolicyKmsKeys\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class PolicyKmsKeyDto {
    public function __construct(
        public readonly int $policyId,
        public readonly int $kmsKeyId,
        public readonly int $weight,
        public readonly int $priority
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
