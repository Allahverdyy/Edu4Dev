import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_event.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_state.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_view_model.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/core/widgets/custom_textfield_widgets.dart';
import 'package:edu4dev/core/widgets/custombuttons/custom_sign_button.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/bottom_right_top_left_icon_widgets.dart';

@RoutePage()
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SignUpViewModel(
              context,
            ),
        child: BlocBuilder<SignUpViewModel, SignUpState>(
            builder: (context, state) {
          return Scaffold(
            backgroundColor: AppLightColorConstants.bgPrimaryColor,
            body: Stack(
              children: [
                const BottomRightAndTopLeftIcon(),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height / 10,
                      ),
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
                      Text(L10n.of(context)!.signup,
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: AppLightColorConstants.greyteam1)),
                      SizedBox(
                        height: context.constLowValue,
                      ),
                      Text(
                        L10n.of(context)!.signUpEduDreams,
                        textAlign: context.textcenter,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppLightColorConstants.greyteam1),
                      ),
                      SizedBox(
                        height: context.constNormalValue,
                      ),
                      textInput(
                        L10n.of(context)!.nameWrite,
                        context,
                        context.read<SignUpViewModel>().nameController,
                        prefixIcon: const Icon(Icons.person_3_outlined),
                      ),
                      textInput(
                        L10n.of(context)!.emailWrite,
                        context,
                        context.read<SignUpViewModel>().emailController,
                        prefixIcon: const Icon(Icons.email_outlined),
                      ),
                      textInput(
                        L10n.of(context)!.passwordWrite,
                        context,
                        context.read<SignUpViewModel>().passwordController,
                        prefixIcon: const Icon(Icons.key_outlined),
                      ),
                      SizedBox(
                        height: context.constMediumValue,
                      ),
                      CustomButton(
                        width: context.width / 1.2,
                        height: context.height / 15,
                        color: AppLightColorConstants.buttonPrimaryColor,
                        onTap: () {
                          context
                              .read<SignUpViewModel>()
                              .add(SignUpInitialEvent(context));
                        },
                        text: L10n.of(context)!.signup,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            L10n.of(context)!.already,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppLightColorConstants.greyteam1),
                          ),
                          TextButton(
                            onPressed: () {
                              context.router.push(const SignInViewRoute());
                            },
                            child: Text(
                              L10n.of(context)!.signin,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: AppLightColorConstants
                                      .buttonPrimaryColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
