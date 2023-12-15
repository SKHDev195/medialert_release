import '../../models/medication.dart';
import 'package:flutter/material.dart';
import 'package:medialert/route_arguments.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medialert/pages/medication_page/widgets/medication_edit_form.dart';
import 'package:medialert/providers/medications_provider/medications_provider.dart';
import 'package:medialert/pages/medication_page/widgets/medication_error_widget.dart';

class MedicationPage extends HookConsumerWidget {
  const MedicationPage({super.key});

  static const routeName = '/medication';

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final args = ModalRoute.of(context)!.settings.arguments
        as MedicationSettingsRouteArguments;

    final AsyncValue<Medication> currentMedication =
        ref.watch(getMedicationProvider(args.medicationId));

    return switch (currentMedication) {
      AsyncData(:final value) => MedicationEditForm(
          medication: value,
        ),
      AsyncLoading() => const CircularProgressIndicator(),
      AsyncError() => MedicationErrorWidget(medicationId: args.medicationId),
      _ => const Text('Initialising...'),
    };
  }
}
