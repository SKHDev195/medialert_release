import 'package:medialert/providers/isar_provider/isar_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../repositories/notifications_repository.dart';

part 'notifications_repository_provider.g.dart';

@riverpod
Future<NotificationsRepository> notificationsRepositoryInstance(
    NotificationsRepositoryInstanceRef ref) async {
  final isar = await ref.watch(isarInstanceProvider.future);

  return NotificationsRepository(
    isar: isar,
  );
}
