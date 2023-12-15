import '../../../models/dosage.dart';
import 'package:flutter/material.dart';
import '../../../models/schedule.dart';
import 'medication_update_button.dart';
import '../../../models/medication.dart';
import '../../../models/dosage_type.dart';
import '../../widgets/form_separator.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/medication_dosage_field.dart';
import '../../widgets/medication_schedule_field.dart';
import '../../widgets/medication_name_text_field.dart';
import '../../widgets/medication_is_secret_field.dart';
import '../../widgets/medication_special_note_field.dart';
import '../../../utils/medication_optional_fields_catcher.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../../providers/medications_provider/medications_provider.dart';
import 'package:medialert/pages/medication_page/widgets/medication_delete_button.dart';

final class MedicationEditForm extends HookConsumerWidget {
  const MedicationEditForm({
    super.key,
    required this.medication,
  });

  final Medication medication;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final formKey = GlobalKey<FormBuilderState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    DosageType? medicationDosageType;
    DurationType? medicationDurationType;

    bool? isSecret;

    final medicationName = useTextEditingController(
      text: medication.name,
    );
    final medicationDosageQuantity = useTextEditingController(
      text: MedicationOptionalFieldsCatcher.getCurrentDosageQuantity(
          medication.dosage),
    );
    final medicationScheduleQuantity = useTextEditingController(
      text: MedicationOptionalFieldsCatcher.getCurrentScheduleQuantity(
          medication.schedule),
    );

    final medicationSpecialNote = useTextEditingController(
      text: medication.specialNote,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Medication'),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: FormBuilder(
            key: formKey,
            child: Column(
              children: [
                MedicationNameTextField(
                  nameController: medicationName,
                  medication: medication,
                ),
                MedicationDosageField(
                  onDosageTypeChanged: (value) {
                    medicationDosageType = value;
                  },
                  medication: medication,
                  dosageController: medicationDosageQuantity,
                ),
                MedicationScheduleField(
                  onDurationTypeChanged: (value) {
                    medicationDurationType = value;
                  },
                  medication: medication,
                  scheduleQuantityController: medicationScheduleQuantity,
                ),
                MedicationIsSecretField(
                  onSecretChanged: (value) {
                    isSecret = value;
                  },
                ),
                MedicationSpecialNoteField(
                  specialNoteContoller: medicationSpecialNote,
                  medication: medication,
                ),
                const SizedBox(
                  height: 10,
                ),
                MedicationUpdateButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      final medicationDosage = Dosage(
                        medicationDosageType,
                        double.tryParse(medicationDosageQuantity.text),
                      );

                      final medicationSchedule = Schedule(
                        medicationDurationType,
                        double.tryParse(medicationScheduleQuantity.text),
                      );
                      ref.read(
                        updateMedicationProvider(
                          medication,
                          medicationName.text,
                          medicationDosage,
                          isSecret,
                          medicationSchedule,
                          medicationSpecialNote.text,
                        ),
                      );
                      Navigator.pop(context);
                    } else {
                      formKey.currentState!.setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
                const FormSeparator(),
                MedicationDeleteButton(
                  onPressed: () {
                    ref.read(
                      deleteMedicationProvider(medication.medicationId),
                    );
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
