import '../../models/medication.dart';
import '../../theme/font_styles.dart';
import 'package:flutter/material.dart';
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

    String medicationScheduleString =
        '${FieldsTransformer.transformScheduleQuantityField(medication.schedule!)}${FieldsTransformer.transformScheduleDurationTypeField(medication.schedule!)}';

    String medicationIsSecretString = switch (medication.isSecret) {
      true => 'yes',
      _ => 'no',
    };

    Widget? specialNoteWidget = switch (medication.specialNote) {
      '' => const SizedBox.shrink(),
      (_) => Row(
          children: [
            const Text('Notes: ', style: boldStyle),
            Text(
              medication.specialNote!,
              style: normalStyle,
            ),
          ],
        ),
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
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: const Color.fromARGB(202, 36, 111, 55),
            width: 3.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    medication.name,
                    style: headingStyle,
                  ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Dosage: ', style: boldStyle),
                Expanded(
                  child: Text(
                    '$medicationDosageString$medicationScheduleString',
                    style: normalStyle,
                  ),
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
            specialNoteWidget,
          ],
        ),
      ),
    );
  }
}
