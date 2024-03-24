import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/core/widgets/bottom_right_top_left_icon_widgets.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custombuttons/custom_sign_button.dart';

@RoutePage()
class SignView extends StatelessWidget {
  const SignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppLightColorConstants.bgPrimaryColor,
      body: Stack(
        children: [
          const BottomRightAndTopLeftIcon(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                    child:
                        Image.asset(Assets.images.png.imagesEdu4techLogo.path)),
              ),
              SizedBox(
                height: context.height * .05,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text(L10n.of(context)!.edu4TechDevPlatform,
                        textAlign: context.textcenter,
                        style: const TextStyle(
                            color: AppLightColorConstants.contentTitle,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))),
              ),
              SizedBox(
                height: context.height * .05,
              ),
              CustomButton(
                width: context.width * 2 / 3,
                height: context.height / 17,
                color: AppLightColorConstants.buttonPrimaryColor,
                onTap: () {
                  context.router.push(const SignInViewRoute());
                },
                text: L10n.of(context)!.signin,
              ),
              SizedBox(
                height: context.height * .05,
              ),
              CustomButton(
                width: context.width * 2 / 3,
                height: context.height / 17,
                color: AppLightColorConstants.buttonPrimaryColor,
                onTap: () {
                  context.router.push(const SignUpViewRoute());
                },
                text: L10n.of(context)!.signup,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
