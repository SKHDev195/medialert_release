import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:medialert/theme/theme_data.dart';
import '../../new_medication_page/new_medication_page.dart';

class NewMedicationButton extends StatelessWidget {
  const NewMedicationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppTheme.backgroundColorForPositiveInteractables,
      onPressed: () => Navigator.pushNamed(
        context,
        NewMedicationPage.routeName,
      ),
      child: const LineIcon.plusSquare(),
    );
  }
}
