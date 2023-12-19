import 'package:isar/isar.dart';
import '../../models/dosage.dart';
import '../../models/schedule.dart';
import '../../models/medication.dart';
import '../../models/medication_notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:medialert/providers/notifications_repository_provider/notifications_repository_provider.dart';

part 'notifications_provider.g.dart';

@riverpod
Future<bool> getNotificationsPermissionStatus(
    GetNotificationsPermissionStatusRef ref) async {
  final notificationsRepository =
      await ref.watch(notificationsRepositoryInstanceProvider.future);
  final result =
      await notificationsRepository.getNotificationsPermissionStatus();
  return result;
}

@riverpod
Future<void> disableMedicationNotifications(
  DisableMedicationNotificationsRef ref,
  Medication medication,
) async {
  final notificationsRepository =
      await ref.watch(notificationsRepositoryInstanceProvider.future);
  await notificationsRepository.disableMedicationNotifications(medication);
}

@riverpod
Future<MedicationNotification?> getNotification(
  GetNotificationRef ref,
  int medicationId,
) async {
  final notificationsRepository =
      await ref.watch(notificationsRepositoryInstanceProvider.future);
  final notification =
      await notificationsRepository.getNotification(medicationId);
  return notification;
}

@riverpod
Future<void> saveNotification(
  SaveNotificationRef ref,
  Id medicationId,
  String medicationName,
  Dosage dosage,
  Schedule schedule,
  DateTime? notificationOffset,
) async {
  final notificationsRepository =
      await ref.watch(notificationsRepositoryInstanceProvider.future);
  await notificationsRepository.saveNotification(
    medicationId,
    medicationName,
    dosage,
    schedule,
    notificationOffset,
  );
}
