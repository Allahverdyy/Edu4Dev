import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:glass_button_package/glass_button_package.dart';

@RoutePage()
class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.png.imagesWelcomeViewLogo.path))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: context.height * .2,
            ),
            const Center(
                child: Text('Welcome to the app!',
                    style: TextStyle(
                      fontSize: 30,
                      color: AppLightColorConstants.divider,
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: context.height * .65,
                ),
                GlassEffectButton(
                  ontap: () {
                    context.router.push(const NavBarViewRoute());
                  },
                  width: context.width * 4 / 6,
                  height: context.height / 17,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Text(
                      L10n.of(context)!.welcome,
                      style: const TextStyle(
                          color: AppLightColorConstants.bgLight,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
