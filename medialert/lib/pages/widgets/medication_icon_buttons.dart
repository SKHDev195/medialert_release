import '../../models/medication.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:medialert/route_arguments.dart';
import '../medication_page/medication_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:medialert/utils/notification_permission_dialog.dart';
import 'package:medialert/pages/notification_page/notification_page.dart';
import 'package:medialert/providers/notifications_provider/notifications_provider.dart';

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

class MedicationNotificationButton extends ConsumerStatefulWidget {
  const MedicationNotificationButton({
    super.key,
    required this.medication,
  });

  final Medication medication;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MedicationNotificationButtonState();
}

class _MedicationNotificationButtonState
    extends ConsumerState<MedicationNotificationButton>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      setState(() {
        ref.refresh(getNotificationsPermissionStatusProvider.future);
      });
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final notification = ref.watch(
      getNotificationProvider(
        widget.medication.medicationId,
      ),
    );
    return notification.when(
      data: (data) {
        if (data == null) {
          return EmptyNotificationsCollectionButton(
            medication: widget.medication,
          );
        } else if (data == 'Notifications disabled') {
          return const DisabledNotificationsButton();
        } else {
          return ExistingNotificationButton(
            medication: widget.medication,
          );
        }
      },
      error: ((error, stackTrace) => const DisabledNotificationsButton()),
      loading: () => const CircularProgressIndicator(),
    );
  }
}

final class MedicationIconButtonsRow extends ConsumerWidget {
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
        LineIcons.bell,
        color: Color.fromARGB(255, 166, 166, 166),
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
        LineIcons.bell,
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
