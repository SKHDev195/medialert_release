import '../medications_page.dart';
import 'package:flutter/material.dart';


final class MedicationsErrorWidget extends StatelessWidget {
  const MedicationsErrorWidget({super.key});

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
            MedicationsPage.routeName,
          ),
          child: const Text('Refresh'),
        ),
      ],
    );
  }
}
