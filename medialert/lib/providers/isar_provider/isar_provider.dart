import 'package:isar/isar.dart';
import '../../models/keep_auth.dart';
import '../../models/medication.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/medication_notification.dart';
import '../../models/token.dart';

part 'isar_provider.g.dart';

@riverpod
Future<Isar> isarInstance(IsarInstanceRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return Isar.open(
    [
      MedicationSchema,
      TokenSchema,
      MedicationNotificationSchema,
      KeepAuthSchema
    ],
    directory: dir.path,
  );
}
