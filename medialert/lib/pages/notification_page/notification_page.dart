import 'package:medialert/providers/notifications_provider/notifications_provider.dart';

import 'package:flutter/material.dart';
import '../../models/medication_notification.dart';
import 'widgets/notification_edit_form.dart';
import 'package:medialert/route_arguments.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../medication_page/widgets/medication_error_widget.dart';

final class NotificationPage extends HookConsumerWidget {
  const NotificationPage({super.key});

  static const routeName = '/notification';

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final args = ModalRoute.of(context)!.settings.arguments
        as MedicationSettingsRouteArguments;

    final AsyncValue<MedicationNotification?> currentNotification =
        ref.watch(getNotificationProvider(args.medicationId));

    return switch (currentNotification) {
      AsyncData(:final value) => NotificationEditForm(
          notification: value,
          medicationId: args.medicationId,
        ),
      AsyncLoading() => const CircularProgressIndicator(),
      AsyncError() => MedicationErrorWidget(medicationId: args.medicationId),
      _ => const Text('Initialising...'),
    };
  }
}
