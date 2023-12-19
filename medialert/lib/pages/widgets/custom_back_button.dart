import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../medications_page/medications_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/providers/medications_provider/medications_provider.dart';

final class CustomBackButton extends ConsumerWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return IconButton(
      
      onPressed: () {
        ref.refresh(medicationsProvider.future);
        Navigator.popAndPushNamed(
          context,
          MedicationsPage.routeName,
        );
      },
      icon: const Icon(
        LineIcons.angleLeft,
      ),
    );
  }
}
