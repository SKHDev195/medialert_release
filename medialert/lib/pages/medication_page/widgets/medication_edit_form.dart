import '../../../models/dosage.dart';
import 'package:flutter/material.dart';
import '../../../models/schedule.dart';
import 'medication_update_button.dart';
import '../../../models/medication.dart';
import '../../../models/dosage_type.dart';
import '../../widgets/form_separator.dart';
import 'package:medialert/theme/font_styles.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../widgets/medication_dosage_field.dart';
import '../../widgets/medication_schedule_field.dart';
import '../../widgets/medication_name_text_field.dart';
import '../../widgets/medication_is_secret_field.dart';
import '../../widgets/medication_special_note_field.dart';
import '../../../utils/medication_optional_fields_catcher.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:medialert/pages/widgets/custom_back_button.dart';
import 'package:medialert/pages/medications_page/medications_page.dart';
import '../../../providers/medications_provider/medications_provider.dart';
import 'package:medialert/pages/medication_page/utils/delete_medication_dialog.dart';
import 'package:medialert/pages/medication_page/utils/medication_snackbar_shower.dart';
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
    DosageType? medicationDosageType = medication.dosage.dosageType;
    DurationType? medicationDurationType = (medication.schedule != null &&
            medication.schedule!.durationType != null)
        ? medication.schedule!.durationType
        : null;

    bool? isSecret = medication.isSecret;

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
        title: const Text(
          'Change Medication',
          style: headingStyle,
        ),
        automaticallyImplyLeading: false,
        leading: const CustomBackButton(),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(5),
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
                  medication: medication,
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
                        ).future,
                      );
                      ref.refresh(medicationsProvider.future);
                      MedicationSnackbarShower.showMedicationUpdatedSnackbar(
                        context,
                      );
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
                const FormSeparator(),
                MedicationDeleteButton(
                  onPressed: () {
                    deleteMedicationDialog(
                      context,
                      ref,
                      medication,
                    );
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
