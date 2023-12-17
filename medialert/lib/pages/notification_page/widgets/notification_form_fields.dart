import 'package:flutter/material.dart';
import 'package:medialert/theme/font_styles.dart';
import '../../../models/schedule.dart';
import '../../../models/medication.dart';
import '../../widgets/medication_info.dart';
import 'package:easy_container/easy_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../new_medication_page/utils/new_medication_page_validators.dart';
import 'package:medialert/pages/notification_page/utils/notification_form_fields_validators.dart';

final class NotificationOffsetField extends ConsumerWidget {
  const NotificationOffsetField({
    super.key,
    required this.onOffsetChanged,
    this.initialOffset,
  });

  final Function(DateTime?) onOffsetChanged;
  final DateTime? initialOffset;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Choose when to start receiving the notification',
            style: MedicationInfo.boldStyle,
          ),
          FormBuilderDateTimePicker(
            name: 'Start date and time',
            initialValue: initialOffset,
            validator: NotificationFormFieldsValidators.validateOffsetField,
            onChanged: onOffsetChanged,
            decoration: const InputDecoration(
              labelText: 'Start date and time',
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationScheduleField extends ConsumerWidget {
  const NotificationScheduleField({
    super.key,
    required this.onDurationTypeChanged,
    required this.scheduleQuantityController,
    this.medication,
    required this.initialValue,
  });

  final Function(DurationType?) onDurationTypeChanged;
  final TextEditingController scheduleQuantityController;
  final Medication? medication;
  final DurationType? initialValue;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Choose the frequency of regular notifications',
            style: MedicationInfo.boldStyle,
          ),
          Row(
            children: [
              Expanded(
                child: FormBuilderTextField(
                  textAlign: TextAlign.center,
                  name: 'Notification schedule',
                  controller: scheduleQuantityController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Interval',
                    hintText: 'Interval',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  validator: NotificationFormFieldsValidators
                      .validateNotificationRegularityField,
                ),
              ),
              Expanded(
                child: FormBuilderDropdown<DurationType>(
                    name: 'Duration',
                    alignment: Alignment.center,
                    initialValue: initialValue,
                    decoration: const InputDecoration(
                      labelText: 'How to measure',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                    ),
                    onChanged: onDurationTypeChanged,
                    validator: (value) =>
                        NewMedicationPageValidators.validateOptionalDropdown(
                            value),
                    items: DurationType.values.map((DurationType durationType) {
                      return DropdownMenuItem(
                        value: durationType,
                        child: Text(
                          durationType.prettyName,
                        ),
                      );
                    }).toList()
                    // ..removeWhere(
                    //     (element) => element.value! == DurationType.minute)
                    // ..removeWhere(
                    //   (element) => (element.value! == DurationType.month),
                    // ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
