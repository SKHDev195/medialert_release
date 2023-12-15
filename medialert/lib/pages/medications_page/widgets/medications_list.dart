import 'package:flutter/material.dart';
import '../../../models/medication.dart';
import '../../widgets/medication_info.dart';

class MedicationsList extends StatelessWidget {
  const MedicationsList({
    super.key,
    required this.medications,
  });

  final List<Medication> medications;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => MedicationInfo(
        medication: medications[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(),
      itemCount: medications.length,
    );
  }
}
