import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_event.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_state.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_view_model.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/core/widgets/custom_textfield_widgets.dart';
import 'package:edu4dev/core/widgets/custombuttons/custom_sign_button.dart';
import 'package:edu4dev/core/widgets/custom_icon.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/bottom_right_top_left_icon_widgets.dart';

@RoutePage()
class SignInView extends StatelessWidget {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInViewModel(context),
      child:
          BlocBuilder<SignInViewModel, SignInState>(builder: (context, state) {
        return Scaffold(
            backgroundColor: AppLightColorConstants.bgPrimaryColor,
            body: Stack(
              children: [
                const BottomRightAndTopLeftIcon(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 180.0),
                      child: Image.asset(
                        Assets.images.png.imagesEdu4techLogoAlternative.path,
                        width: context.width * 0.3,
                      ),
                    ),
                    SizedBox(
                      height: context.constMediumValue,
                    ),
                    Text(L10n.of(context)!.signin,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: AppLightColorConstants.greyteam1)),
                    SizedBox(
                      height: context.constLowValue,
                    ),
                    Text(
                      L10n.of(context)!.welcomeback,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppLightColorConstants.greyteam1),
                    ),
                    SizedBox(
                      height: context.constNormalValue,
                    ),
                    Column(
                      children: [
                        textInput(
                          L10n.of(context)!.emailWrite,
                          context,
                          context.read<SignInViewModel>().emailController,
                          prefixIcon: const Icon(Icons.email_outlined),
                        ),
                        SizedBox(
                          height: context.constNormalValue,
                        ),
                        textInput(
                          L10n.of(context)!.passwordWrite,
                          context,
                          context.read<SignInViewModel>().passwordController,
                          prefixIcon: const Icon(Icons.key_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: context.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    L10n.of(context)!.forgotPassword,
                                    style: const TextStyle(
                                        color: Color(0xffD149B8)),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: context.constLowValue,
                        ),
                        CustomButton(
                          width: context.width / 1.2,
                          height: context.height / 15,
                          color: AppLightColorConstants.buttonPrimaryColor,
                          onTap: () {
                            context
                                .read<SignInViewModel>()
                                .add(SignInInitialEvent(context));
                          },
                          text: L10n.of(context)!.signin,
                        ),
                        Row(
                          mainAxisAlignment: context.center,
                          children: [
                            Text(
                              L10n.of(context)!.haveAccount,
                              style: TextStyle(
                                  color: AppLightColorConstants.greyteam1),
                            ),
                            TextButton(
                                onPressed: () {
                                  context.router.push(const SignUpViewRoute());
                                },
                                child: Text(
                                  L10n.of(context)!.signup,
                                  style:
                                      const TextStyle(color: Color(0xffD149B8)),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: context.constLowValue,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color:
                                      AppLightColorConstants.buttonPrimaryColor,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  L10n.of(context)!.orContinue,
                                  style: const TextStyle(
                                      color: AppLightColorConstants
                                          .buttonPrimaryColor),
                                ),
                              ),
                              const Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color:
                                      AppLightColorConstants.buttonPrimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: context.constMediumValue,
                        ),
                        Row(
                          mainAxisAlignment: context.spaceEvenly,
                          children: [
                            CustomIcon(
                              imagePath: Assets.icons.png.iconsApple.path,
                              height: context.constHighValue,
                            ),
                            CustomIcon(
                              imagePath: Assets.icons.png.iconsGoogle.path,
                              height: context.constHighValue,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ));
      }),
    );
  }
}
