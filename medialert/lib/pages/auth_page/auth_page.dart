import 'package:medialert/pages/auth_page/widgets/keep_auth_checkbox.dart';
import 'package:medialert/providers/keep_auth_provider/keep_auth_provider.dart';

import '../widgets/logo.dart';
import 'package:flutter/material.dart';
import '../../utils/error_dialog.dart';
import '../../models/custom_error.dart';
import 'package:medialert/theme/font_styles.dart';
import '../medications_page/medications_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medialert/providers/auth_provider/auth_provider.dart';
import 'package:medialert/pages/auth_page/widgets/authenticate_button.dart';

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
    // ref.listen(getKeepAuthProvider, (previous, next) {
    //   if ()
    //   if (next.asData.value!.isEnabled) {
    //     Navigator.pushNamed(
    //       context,
    //       MedicationsPage.routeName,
    //     );
    //   }
    // });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
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
                const KeepAuthCheckbox(),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'All medication data is stored securely on your local device.\nIt is never shared to third parties.',
                  style: explanationStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
