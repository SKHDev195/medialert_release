import 'package:medialert/providers/medications_provider/medications_provider.dart';
import 'package:medialert/providers/notifications_provider/notifications_provider.dart';

import '../widgets/logo.dart';
import 'package:flutter/material.dart';
import '../../utils/error_dialog.dart';
import '../../models/custom_error.dart';
import 'widgets/keep_auth_checkbox.dart';
import 'package:medialert/theme/font_styles.dart';
import '../medications_page/medications_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medialert/providers/auth_provider/auth_provider.dart';
import 'package:medialert/pages/auth_page/widgets/authenticate_button.dart';
import 'package:medialert/providers/keep_auth_provider/keep_auth_provider.dart';

final class AuthPage extends HookConsumerWidget {
  const AuthPage({
    super.key,
  });

  static const routeName = '/auth';

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    late Widget authPage;

    ref.listen(getKeepAuthProvider, (previous, next) {
      if (next.asData != null &&
          next.asData!.value != null &&
          next.asData!.value!.isEnabled) {
        ref.refresh(medicationsProvider.future);
        ref.refresh(getNotificationsPermissionStatusProvider.future);
        Navigator.pushNamed(
          context,
          MedicationsPage.routeName,
        );
      }
    });
    ref.watch(getKeepAuthProvider).when(
      data: (data) {
        authPage = Scaffold(
          appBar: AppBar(
            title: const Text(
              'Sign In',
              style: headingStyle,
            ),
            automaticallyImplyLeading: false,
          ),
          body: Center(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Logo(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'MediAlert',
                      style: titleStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthenticateButton(
                      onPressed: () {
                        ref.watch(authenticateProvider.future).then(
                          (value) {
                            if (value) {
                              Navigator.pushNamed(
                                context,
                                MedicationsPage.routeName,
                              );
                            }
                          },
                          onError: (object, stackTrace) {
                            errorDialog(
                              context,
                              CustomError(
                                code: 'Auth',
                                plugin: 'Local auth',
                                message: stackTrace.toString(),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: KeepAuthCheckbox(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        authPage = Scaffold(
          appBar: AppBar(
            title: const Text('Sign In'),
            automaticallyImplyLeading: false,
          ),
          body: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
      loading: () {
        authPage = Scaffold(
          appBar: AppBar(
            title: const Text('Sign In'),
            automaticallyImplyLeading: false,
          ),
          body: const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        );
      },
    );
    return authPage;
  }
}
