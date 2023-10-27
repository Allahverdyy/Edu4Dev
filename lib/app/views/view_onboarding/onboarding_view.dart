import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          L10n.of(context)!.splashEdu4Tech
        ),
      )
    );
  }
}