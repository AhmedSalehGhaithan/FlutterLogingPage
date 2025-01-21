import 'package:flutter/material.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.g_mobiledata, size: 40, color: Colors.red),
        ),
        const SizedBox(width: 20),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.facebook, size: 40, color: Colors.blue),
        ),
      ],
    );
  }
}
