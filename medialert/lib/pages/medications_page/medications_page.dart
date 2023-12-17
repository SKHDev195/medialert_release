import '../../models/medication.dart';
import '../../theme/font_styles.dart';
import 'package:flutter/material.dart';
import 'widgets/medications_list.dart';
import 'widgets/new_medication_button.dart';
import 'widgets/medications_error_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/medications_provider/medications_provider.dart';
import 'package:medialert/pages/global_settings_page/global_settings_page.dart';
import 'package:medialert/pages/medications_page/widgets/global_settings_button.dart';

final class MedicationsPage extends ConsumerWidget {
  const MedicationsPage({super.key});

  static const routeName = '/medications';

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final AsyncValue<List<Medication>> medications =
        ref.watch(medicationsProvider);
    ref.refresh(medicationsProvider.future);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Medications',
          style: headingStyle,
        ),
        automaticallyImplyLeading: false,
        actions: [
          GlobalSettingsButton(onPressed: () {
            Navigator.pushNamed(
              context,
              GlobalSettingsPage.routeName,
            );
          }),
        ],
      ),
      body: Center(
        child: switch (medications) {
          AsyncData(:final value) => getCorrectList(value),
          AsyncLoading() => const CircularProgressIndicator(),
          AsyncError() => const MedicationsErrorWidget(),
          _ => const Text('Initialising...'),
        },
      ),
      floatingActionButton: const NewMedicationButton(),
    );
  }

  Widget getCorrectList(List<Medication> medications) {
    Widget result = switch (medications.length) {
      > 0 => MedicationsList(
          medications: medications,
        ),
      _ => const SafeArea(
          minimum: EdgeInsets.all(10),
          child: Text(
            'Add a medication by tapping on \'+\' in the bottom-right corner',
            textAlign: TextAlign.center,
            style: normalStyle,
          ),
        ),
    };

    return result;
  }
}
