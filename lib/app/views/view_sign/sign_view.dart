import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/core/widgets/glass_effect_button_widgets.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/light_theme_color_constant.dart';

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
        appBar: AppBar(),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: context.height * .05,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                  child: Text('Edu4Tech \nDeveloper Platform', textAlign: context.textcenter,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ))),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                  child: Text('Welcome the Edu4Tech Developer Platform. \nThis Platform entry and upload cv.',
                      style: TextStyle(
                        fontSize: 16,
                        // color: AppLightColorConstants.divider,
                      ))),
            ),
            SizedBox(
              height: context.height/3.2,
            ),
            GlassEffectButton(
              ontap: () {
                context.router.push(const SignInViewRoute());
              },
              width: context.width * 2 / 3,
              height: context.height / 17,
              text: 'Sign in',
              fontsize: 23,
              fontfamily: 'Roboto',
              color: AppLightColorConstants.contentDisabled
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
              text: 'Sign up',
              fontsize: 23,
              fontfamily: 'Roboto',
              color: AppLightColorConstants.contentDisabled
            )
          ],
        ),
      ),
    );
  }
}