import 'package:medialert/providers/notifications_provider/notifications_provider.dart';
import 'package:medialert/utils/notification_permission_dialog.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../models/medication.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:medialert/route_arguments.dart';
import '../medication_page/medication_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/pages/notification_page/notification_page.dart';

final class MedicationEditButton extends ConsumerWidget {
  const MedicationEditButton({
    super.key,
    required this.medication,
  });

  final Medication medication;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return IconButton(
      onPressed: () => Navigator.popAndPushNamed(
        context,
        MedicationPage.routeName,
        arguments: MedicationSettingsRouteArguments(
          medicationId: medication.medicationId,
        ),
      ),
      icon: const Icon(
        Icons.create_sharp,
      ),
    );
  }
}

final class MedicationNotificationButton extends ConsumerWidget {
  const MedicationNotificationButton({
    super.key,
    required this.medication,
  });

  final Medication medication;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final notification = ref.watch(
      getNotificationProvider(
        medication.medicationId,
      ).future,
    );
    notification.then(
      (value) {
        if (value == null) {
          return EmptyNotificationsCollectionButton(
            medication: medication,
          );
        } else {
          return ExistingNotificationButton(
            medication: medication,
          );
        }
      },
    );
    ref.refresh(
      getNotificationProvider(medication.medicationId),
    );
    final areNotificationsEnabled = Permission.notification.isGranted;
    areNotificationsEnabled.then(
      (value) {
        if (value == false) {
          return const DisabledNotificationsButton();
        }
      },
    );
  }
}

class MedicationIconButtonsRow extends ConsumerWidget {
  const MedicationIconButtonsRow({
    super.key,
    required this.medication,
  });

  final Medication medication;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Row(
      children: [
        MedicationNotificationButton(
          medication: medication,
        ),
        MedicationEditButton(
          medication: medication,
        ),
      ],
    );
  }
}

final class DisabledNotificationsButton extends ConsumerWidget {
  const DisabledNotificationsButton({super.key});
  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return IconButton(
      onPressed: () {
        notificationPermissionDialog(
          context,
          ref,
        );
      },
      icon: const Icon(
        Icons.notifications_off,
      ),
    );
  }
}

final class EmptyNotificationsCollectionButton extends ConsumerWidget {
  const EmptyNotificationsCollectionButton({
    super.key,
    required this.medication,
  });

  final Medication medication;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return IconButton(
      onPressed: () => Navigator.popAndPushNamed(
        context,
        NotificationPage.routeName,
        arguments: MedicationSettingsRouteArguments(
          medicationId: medication.medicationId,
        ),
      ),
      icon: const Icon(
        Icons.abc,
      ),
    );
  }
}

final class ExistingNotificationButton extends ConsumerWidget {
  const ExistingNotificationButton({
    super.key,
    required this.medication,
  });

  final Medication medication;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return IconButton(
      onPressed: () => Navigator.popAndPushNamed(
        context,
        NotificationPage.routeName,
        arguments: MedicationSettingsRouteArguments(
          medicationId: medication.medicationId,
        ),
      ),
      icon: const Icon(
        Icons.notifications_active_sharp,
      ),
    );
  }
}
