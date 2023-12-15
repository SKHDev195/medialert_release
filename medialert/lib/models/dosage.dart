import 'package:isar/isar.dart';

import 'dosage_type.dart';

part 'dosage.g.dart';

@embedded
@Name("Dosage")
final class Dosage {
  Dosage([
    this.dosageType,
    this.quantity,
  ]);

  @Enumerated(EnumType.ordinal32)
  DosageType? dosageType;

  double? quantity;
}
