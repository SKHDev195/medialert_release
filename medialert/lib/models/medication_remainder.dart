import 'package:isar/isar.dart';

import 'dosage_type.dart';

part 'medication_remainder.g.dart';

@embedded
final class MedicationRemainder {
  MedicationRemainder([
    this.dosageType,
    this.quantity,
  ]);

  @Enumerated(EnumType.ordinal32)
  DosageType? dosageType;

  double? quantity;
}
