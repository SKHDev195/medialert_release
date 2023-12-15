import 'package:flutter/material.dart';

class GlobalSettingsButton extends StatelessWidget {
  const GlobalSettingsButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.settings),
    );
  }
}
