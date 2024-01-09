import 'medication_info.dart';
import '../../models/medication.dart';
import 'package:flutter/material.dart';
import '../../../models/dosage_type.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../new_medication_page/utils/new_medication_page_validators.dart';

final class MedicationDosageField extends StatelessWidget {
  const MedicationDosageField({
    super.key,
    required this.onDosageTypeChanged,
    required this.dosageController,
    this.medication,
  });

  final Function(DosageType?) onDosageTypeChanged;
  final TextEditingController dosageController;
  final Medication? medication;

  DosageType? getDosageType() {
    if (medication != null && medication!.dosage.dosageType != null) {
      return medication!.dosage.dosageType;
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
            'Enter the medication dosage',
            style: MedicationInfo.boldStyle,
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: dosageController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Quantity',
                    hintText: 'Quantity',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  validator: (value) =>
                      NewMedicationPageValidators.validateRequiredQuantityField(
                    value,
                  ),
                ),
              ),
              Expanded(
                child: FormBuilderDropdown<DosageType>(
                  name: 'Dosage type',
                  decoration: const InputDecoration(
                    labelText: 'How to measure',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  initialValue: getDosageType(),
                  onChanged: onDosageTypeChanged,
                  validator: (value) =>
                      NewMedicationPageValidators.validateRequiredDropdown(
                          value),
                  items: DosageType.values.map((DosageType dosageType) {
                    return DropdownMenuItem(
                      value: dosageType,
                      child: Text(
                        dosageType.prettyName,
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
