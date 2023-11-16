import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:glass_button_package/glass_button_package.dart';

@RoutePage()
class SignView extends StatelessWidget {
  const SignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.png.imagesHomeViewB.path))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: context.height * .15,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Text(L10n.of(context)!.edu4TechDevPlatform,
                      textAlign: context.textcenter,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Text(L10n.of(context)!.edu4TechWelcomeSign,
                      style: const TextStyle(
                        fontSize: 16,
                      ))),
            ),
            SizedBox(
              height: context.height / 3.2,
            ),
            GlassEffectButton(
              ontap: () {
                context.router.push(const SignUpViewRoute());
              },
              width: context.width * 2 / 3,
              height: context.height / 17,
              child: Padding(
                padding: const EdgeInsets.only(right: 28),
                child: Text(
                  L10n.of(context)!.signin,
                  style: const TextStyle(
                      color: AppLightColorConstants.bgLight,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: context.height / 18,
            ),
            GlassEffectButton(
              ontap: () {
                context.router.push(const SignUpViewRoute());
              },
              width: context.width * 2 / 3,
              height: context.height / 17,
              child: Padding(
                padding: const EdgeInsets.only(right: 28),
                child: Text(
                  L10n.of(context)!.signup,
                  style: const TextStyle(
                      color: AppLightColorConstants.bgLight,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
