import '../../theme/theme_data.dart';
import '../../theme/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medialert/providers/isar_provider/isar_provider.dart';
import 'package:medialert/pages/medications_page/medications_page.dart';
import 'package:medialert/providers/keep_auth_provider/keep_auth_provider.dart';
import 'package:medialert/providers/medications_provider/medications_provider.dart';
import 'package:medialert/providers/medications_repository_provider/medications_repository_provider.dart';
import 'package:medialert/providers/notifications_repository_provider/notifications_repository_provider.dart';

final class RefreshButton extends ConsumerWidget {
  const RefreshButton({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: AppTheme.backgroundColorForPositiveInteractables,
        textStyle: buttonStyle,
        padding: const EdgeInsets.all(
          10,
        ),
      ),
      onPressed: () async {
        await ref.refresh(isarInstanceProvider.future);
        await ref.refresh(getKeepAuthProvider.future);
        await ref.refresh(medicationsRepositoryInstanceProvider.future);
        await ref.refresh(medicationsProvider.future);
        await ref.refresh(notificationsRepositoryInstanceProvider.future);
        Navigator.popAndPushNamed(
          context,
          MedicationsPage.routeName,
        );
      },
      child: const Text('Delete Medication'),
    );
  }
}
