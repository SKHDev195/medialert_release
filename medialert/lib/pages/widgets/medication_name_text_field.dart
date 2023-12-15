import 'medication_info.dart';
import '../../theme/font_styles.dart';
import '../../models/medication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../new_medication_page/utils/new_medication_page_validators.dart';

final class MedicationNameTextField extends StatelessWidget {
  const MedicationNameTextField({
    super.key,
    required this.nameController,
    this.medication,
  });

  final TextEditingController nameController;
  final Medication? medication;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter the medication name',
            style: MedicationInfo.boldStyle,
          ),
          FormBuilderTextField(
            name: 'Name',
            style: normalStyle,
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
              labelStyle: normalStyle,
              hintText: 'Medication name',
            ),
            validator: (value) =>
                NewMedicationPageValidators.validateNameField(value!),
          ),
        ],
      ),
    );
  }
}
