import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../medications_page/medications_page.dart';

final class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.popAndPushNamed(
        context,
        MedicationsPage.routeName,
      ),
      icon: const Icon(
        LineIcons.angleLeft,
      ),
    );
  }
}
