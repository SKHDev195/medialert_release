import '../../models/medication.dart';
import '../../theme/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:easy_container/easy_container.dart';
import 'package:medialert/utils/fields_transformer.dart';
import 'package:medialert/pages/widgets/medication_icon_buttons.dart';

final class MedicationInfo extends StatelessWidget {
  const MedicationInfo({
    super.key,
    required this.medication,
  });

  final Medication medication;
  static const boldStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    String medicationDosageString =
        '${FieldsTransformer.transformQuantityField(medication.dosage.quantity)}${FieldsTransformer.catchDosageType(medication.dosage.dosageType)} ';
    String medicationScheduleString = switch (medication.schedule) {
      null => '',
      (_) =>
        '${FieldsTransformer.transformScheduleQuantityField(medication.schedule!)}${FieldsTransformer.transformScheduleDurationTypeField(medication.schedule!)}',
    };
    String medicationIsSecretString = switch (medication.isSecret) {
      true => 'yes',
      _ => 'no',
    };

    String medicationSpecialNoteString = switch (medication.specialNote) {
      '' => '...',
      null => '...',
      (_) => medication.specialNote!,
    };

    return SafeArea(
      minimum: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(
            color: const Color.fromARGB(202, 36, 111, 55),
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  medication.name,
                  style: headingStyle,
                ),
                MedicationIconButtonsRow(
                  medication: medication,
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              children: [
                const Text('Dosage: ', style: boldStyle),
                Text(
                  '$medicationDosageString$medicationScheduleString',
                  style: normalStyle,
                ),
              ],
            ),
            Row(
              children: [
                const Text('Private: ', style: boldStyle),
                Text(
                  medicationIsSecretString,
                  style: normalStyle,
                ),
              ],
            ),
            Row(
              children: [
                const Text('Notes: ', style: boldStyle),
                Text(
                  medicationSpecialNoteString,
                  style: normalStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
