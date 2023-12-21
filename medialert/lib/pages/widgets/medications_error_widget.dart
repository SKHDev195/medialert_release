import 'package:flutter/material.dart';
import 'package:medialert/theme/font_styles.dart';
import 'package:medialert/pages/widgets/refresh_button.dart';

final class MedicationsErrorWidget extends StatelessWidget {
  const MedicationsErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Error',
          style: headingStyle,
        ),
        automaticallyImplyLeading: false,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Something has gone wrong...\r\nPress the button below to refresh the app.',
            style: normalStyle,
          ),
          SizedBox(
            height: 15,
          ),
          RefreshButton(),
        ],
      ),
    );
  }
}
