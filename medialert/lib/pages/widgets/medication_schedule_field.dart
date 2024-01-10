import '../../models/medication.dart';
import 'package:flutter/material.dart';
import 'package:medialert/models/schedule.dart';
import 'package:medialert/pages/widgets/medication_info.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../new_medication_page/utils/new_medication_page_validators.dart';

final class MedicationScheduleField extends StatelessWidget {
  const MedicationScheduleField({
    super.key,
    required this.onDurationTypeChanged,
    required this.scheduleQuantityController,
    this.medication,
  });

  final Function(DurationType?) onDurationTypeChanged;
  final TextEditingController scheduleQuantityController;
  final Medication? medication;

  DurationType? getCurrentScheduleDurationType() {
    if (medication != null &&
        medication!.schedule != null &&
        medication!.schedule!.durationType != null) {
      return medication!.schedule!.durationType;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter the medication schedule',
            style: MedicationInfo.boldStyle,
          ),
          Row(
            children: [
              Expanded(
                child: FormBuilderTextField(
                  textAlign: TextAlign.center,
                  name: 'Schedule',
                  controller: scheduleQuantityController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Interval',
                    hintText: 'Interval',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  validator: (value) =>
                      NewMedicationPageValidators.validateOptionalQuantityField(
                          value),
                ),
              ),
              Expanded(
                child: FormBuilderDropdown<DurationType>(
                  name: 'Duration',
                  decoration: const InputDecoration(
                    labelText: 'How to measure',
                    hintText: '',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  initialValue: getCurrentScheduleDurationType(),
                  onChanged: onDurationTypeChanged,
                  validator: (value) =>
                      NewMedicationPageValidators.validateRequiredDropdown(
                          value),
                  items: DurationType.values.map((DurationType durationType) {
                    return DropdownMenuItem(
                      value: durationType,
                      child: Text(
                        durationType.prettyName,
                      ),
                    );
                  }).toList()
                    ..removeWhere(
                        (element) => element.value! == DurationType.minute)
                    ..removeWhere(
                      (element) => (element.value! == DurationType.month),
                    ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
