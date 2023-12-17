import 'package:medialert/theme/font_styles.dart';

import '../../models/dosage.dart';
import '../../models/schedule.dart';
import 'package:flutter/material.dart';
import '../../models/dosage_type.dart';
import '../../utils/error_dialog.dart';
import '../../models/custom_error.dart';
import '../widgets/medication_dosage_field.dart';
import '../widgets/medication_name_text_field.dart';
import '../widgets/medication_is_secret_field.dart';
import '../widgets/medication_schedule_field.dart';
import '../widgets/medication_special_note_field.dart';
import 'widgets/medication_creation_button.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medialert/pages/widgets/form_separator.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../../providers/medications_provider/medications_provider.dart';

final class NewMedicationPage extends HookConsumerWidget {
  const NewMedicationPage({super.key});

  static const routeName = '/newMedication';

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final formKey = GlobalKey<FormBuilderState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    final medicationName = useTextEditingController();
    DosageType? medicationDosageType;
    final medicationDosageQuantity = useTextEditingController();
    final medicationScheduleQuantity = useTextEditingController();
    DurationType? medicationDurationType;
    bool? isSecret;
    final medicationSpecialNote = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add New Medication',
          style: headingStyle,
        ),
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
                ),
                MedicationDosageField(
                  onDosageTypeChanged: (value) {
                    medicationDosageType = value;
                  },
                  dosageController: medicationDosageQuantity,
                ),
                MedicationScheduleField(
                  onDurationTypeChanged: (value) {
                    medicationDurationType = value;
                  },
                  scheduleQuantityController: medicationScheduleQuantity,
                ),
                MedicationIsSecretField(
                  onSecretChanged: (value) {
                    isSecret = value;
                  },
                ),
                MedicationSpecialNoteField(
                  specialNoteContoller: medicationSpecialNote,
                ),
                const SizedBox(
                  height: 10,
                ),
                MedicationCreationButton(
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
                      ref
                          .read(
                            createMedicationProvider(
                              medicationName.text,
                              medicationDosage,
                              isSecret,
                              medicationSchedule,
                              medicationSpecialNote.text,
                            ),
                          )
                          .when(
                            data: (data) {},
                            error: (object, stackTrace) {
                              errorDialog(
                                context,
                                const CustomError(
                                  message: 'Medication could not be created!',
                                  code: 'Storage error',
                                ),
                              );
                            },
                            loading: () {},
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
