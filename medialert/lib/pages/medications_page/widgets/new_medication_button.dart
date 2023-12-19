import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:medialert/theme/theme_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../new_medication_page/new_medication_page.dart';

class NewMedicationButton extends ConsumerWidget {
  const NewMedicationButton({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return FloatingActionButton(
      backgroundColor: AppTheme.backgroundColorForPositiveInteractables,
      onPressed: () {
        Navigator.popAndPushNamed(
          context,
          NewMedicationPage.routeName,
        );
      },
      child: const LineIcon.plusSquare(),
    );
  }
}
