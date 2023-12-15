import '../medication_page.dart';
import 'package:flutter/material.dart';
import 'package:medialert/route_arguments.dart';

final class MedicationErrorWidget extends StatelessWidget {
  const MedicationErrorWidget({
    super.key,
    required this.medicationId,
  });

  final int medicationId;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
            'Something has gone wrong...\r\nPress the button below to refresh the page'),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(
            context,
            MedicationPage.routeName,
            arguments:
                MedicationSettingsRouteArguments(medicationId: medicationId),
          ),
          child: const Text('Refresh'),
        ),
      ],
    );
  }
}
