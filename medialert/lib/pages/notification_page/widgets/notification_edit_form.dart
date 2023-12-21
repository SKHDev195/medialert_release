import 'package:flutter/material.dart';
import '../../../models/schedule.dart';
import '../utils/notification_scheduler.dart';
import 'package:medialert/theme/font_styles.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../medications_page/medications_page.dart';
import '../../../models/medication_notification.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:medialert/pages/widgets/custom_back_button.dart';
import 'package:medialert/providers/medications_provider/medications_provider.dart';
import 'package:medialert/providers/notifications_provider/notifications_provider.dart';
import 'package:medialert/pages/notification_page/widgets/notification_form_fields.dart';
import 'package:medialert/pages/notification_page/utils/notifications_snackbar_shower.dart';
import 'package:medialert/pages/notification_page/widgets/create_cancel_notifications_buttons.dart';

final class NotificationEditForm extends HookConsumerWidget {
  const NotificationEditForm({
    super.key,
    this.notification,
    required this.medicationId,
  });

  final dynamic notification;
  final int medicationId;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final medicationAsync = ref.watch(getMedicationProvider(medicationId));

    medicationAsync.whenData(
      (value) => ref.watch(
        getNotificationProvider(value.medicationId),
      ),
    );

    final formKey = GlobalKey<FormBuilderState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

    final medication = switch (medicationAsync) {
      AsyncData(:final value) => value,
      _ => null,
    };

    final notificationScheduleQuantityController = useTextEditingController(
      text: switch (notification) {
        != null => notification!.schedule.regularity.toInt().toString(),
        _ => null,
      },
    );
    DateTime? offset = switch (notification) {
      != null => notification!.notificationOffset,
      _ => null,
    };

    DurationType? notificationDurationType = switch (notification) {
      != null => notification!.schedule.durationType,
      _ => null,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Set Notification',
          style: headingStyle,
        ),
        automaticallyImplyLeading: false,
        leading: const CustomBackButton(),
      ),
      body: switch (medication) {
        != null => SafeArea(
            minimum: const EdgeInsets.all(5),
            child: SingleChildScrollView(
              child: FormBuilder(
                key: formKey,
                child: Column(
                  children: [
                    NotificationOffsetField(
                      initialOffset: offset,
                      onOffsetChanged: (value) {
                        offset = value;
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    NotificationScheduleField(
                      initialValue: notificationDurationType,
                      onDurationTypeChanged: (value) {
                        notificationDurationType = value;
                      },
                      scheduleQuantityController:
                          notificationScheduleQuantityController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CreateNotificationButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          final schedule = Schedule(
                            notificationDurationType,
                            double.tryParse(
                              notificationScheduleQuantityController.text,
                            ),
                          );
                          await ref.read(
                            saveNotificationProvider(
                              medication.medicationId,
                              medication.name,
                              medication.dosage,
                              schedule,
                              offset,
                            ).future,
                          );

                          await NotificationScheduler
                              .createRepeatedNotification(
                            medication,
                            schedule,
                            offset!,
                          );

                          await ref.refresh(
                            getNotificationProvider(medicationId).future,
                          );

                          NotificationsSnackbarShower
                              .showNotificationCreatedSnackbar(context);
                          Navigator.popAndPushNamed(
                            context,
                            MedicationsPage.routeName,
                          );
                        } else {
                          formKey.currentState!.setState(() {
                            autovalidateMode = AutovalidateMode.always;
                          });
                        }
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CancelNotificationButton(
                      onPressed: () async {
                        await ref.read(
                          disableMedicationNotificationsProvider(
                            medication,
                          ).future,
                        );
                        await ref.refresh(
                          getNotificationProvider(medicationId).future,
                        );
                        NotificationsSnackbarShower
                            .showNotificationCanceledSnackbar(
                          context,
                        );
                        Navigator.popAndPushNamed(
                          context,
                          MedicationsPage.routeName,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(5),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'In some cases, notifications can arrive slightly later than scheduled.',
                          style: explanationStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        _ => const Center(
            child: CircularProgressIndicator(),
          ),
      },
    );
  }
}
