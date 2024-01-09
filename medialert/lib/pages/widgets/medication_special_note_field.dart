import 'medication_info.dart';
import '../../theme/font_styles.dart';
import '../../models/medication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:medialert/pages/new_medication_page/utils/new_medication_page_validators.dart';

final class MedicationSpecialNoteField extends StatelessWidget {
  const MedicationSpecialNoteField({
    super.key,
    required this.specialNoteContoller,
    this.medication,
  });

  final TextEditingController specialNoteContoller;
  final Medication? medication;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter any additional info',
            style: MedicationInfo.boldStyle,
          ),
          FormBuilderTextField(
            name: 'Additional info',
            style: normalStyle,
            controller: specialNoteContoller,
            decoration: const InputDecoration(
              labelText: 'Additional info',
              hintText: 'Additional info',
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            validator: (value) =>
                NewMedicationPageValidators.validateOptionalTextField(value),
          ),
        ],
      ),
    );
  }
}
