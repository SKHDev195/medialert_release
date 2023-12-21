import 'package:flutter/material.dart';
import 'widgets/notification_edit_form.dart';
import 'package:medialert/route_arguments.dart';
import '../widgets/medications_error_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medialert/providers/notifications_provider/notifications_provider.dart';

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

    final currentNotification =
        ref.watch(getNotificationProvider(args.medicationId));

    return switch (currentNotification) {
      AsyncData(:final value) => NotificationEditForm(
          notification: value,
          medicationId: args.medicationId,
        ),
      AsyncLoading() => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      AsyncError() => const MedicationsErrorWidget(),
      _ => const Text('Initialising...'),
    };
  }
}
