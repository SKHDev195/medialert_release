import 'medication_info.dart';
import '../../theme/font_styles.dart';
import '../../models/medication.dart';
import 'package:flutter/material.dart';
import 'package:easy_container/easy_container.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:medialert/pages/new_medication_page/utils/new_medication_page_validators.dart';

class MedicationSpecialNoteField extends StatelessWidget {
  MedicationSpecialNoteField({
    super.key,
    required this.specialNoteContoller,
    this.medication,
  });

  final TextEditingController specialNoteContoller;
  Medication? medication;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter any special notes',
            style: MedicationInfo.boldStyle,
          ),
          FormBuilderTextField(
            name: 'Special note',
            style: normalStyle,
            controller: specialNoteContoller,
            decoration: const InputDecoration(
              labelText: 'Special note',
              hintText: 'Any additional info',
            ),
            validator: (value) =>
                NewMedicationPageValidators.validateOptionalTextField(value),
          ),
        ],
      ),
    );
  }
}
