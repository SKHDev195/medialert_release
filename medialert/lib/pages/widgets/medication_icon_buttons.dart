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
      icon: const Icon(LineIcons.edit),
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
    // final isNotificationPermissionGiven = await
    return IconButton(
      onPressed: () => Navigator.popAndPushNamed(
        context,
        NotificationPage.routeName,
        arguments: MedicationSettingsRouteArguments(
          medicationId: medication.medicationId,
        ),
      ),
      icon: const Icon(
        LineIcons.bell,
      ),
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
