import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Hello",
            style: textTheme.titleSmall!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w900),
          ),
          Text(
            "Welcome to Makeup hub",
            style: textTheme.bodySmall!.copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
