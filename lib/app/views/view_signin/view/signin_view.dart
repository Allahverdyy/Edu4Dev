import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_event.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_state.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_view_model.dart';
import 'package:edu4dev/app/views/view_signup/view/signup_view.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/core/widgets/custom_button.dart';
import 'package:edu4dev/core/widgets/square_tile.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            backgroundColor: AppLightColorConstants.greyteam2,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Icon(
                      Icons.lock_outline_sharp,
                      size: 100,
                    ),
                    SizedBox(
                      height: context.constHighValue,
                    ),
                    Text(
                      L10n.of(context)!.welcomeback,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppLightColorConstants.greyteam1),
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignUpView()));
                            },
                            child: Text(L10n.of(context)!.signup))
                      ],
                    ),
                    Column(
                      children: [
                        textInput(
                          L10n.of(context)!.email,
                          L10n.of(context)!.emailWrite,
                          context,
                          const Icon(Icons.email_outlined),
                          context.read<SignInViewModel>().emailController,
                        ),
                        textInput(
                            L10n.of(context)!.password,
                            L10n.of(context)!.password,
                            context,
                            const Icon(Icons.key),
                            context.read<SignInViewModel>().passwordController),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: context.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    L10n.of(context)!.forgotPassword,
                                    style: TextStyle(
                                        color:
                                            AppLightColorConstants.greyteam1),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: context.constLowValue,
                        ),
                        CustomButton(
                          ontap: () {
                            context
                                .read<SignInViewModel>()
                                .add(SignInInitialEvent(context));
                          },
                          text: L10n.of(context)!.signin,
                        ),
                        SizedBox(
                          height: context.constMediumValue,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: AppLightColorConstants.greyteam1,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(L10n.of(context)!.orContinue),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 1,
                                  color: AppLightColorConstants.greyteam1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: context.constMediumValue,
                        ),
                        Row(
                          mainAxisAlignment: context.center,
                          children: [
                            SquareTile(
                              imagePath: Assets.icons.png.iconsApple.path,
                              height: context.constHighValue,
                            ),
                            SizedBox(
                              width: context.constMediumValue,
                            ),
                            SquareTile(
                              imagePath: Assets.icons.png.iconsGoogle.path,
                              height: context.constHighValue,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ));
      }),
    );
  }

  Widget textInput(String label, String hintText, BuildContext context,
      Icon isIcon, TextEditingController controller,
      {TextInputType? keyboardType,
      List<TextInputFormatter>? inputFormatters,
      TextInputAction? textInputAction,
      String? Function(String?)? validator}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(label, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 10),
        SizedBox(
          child: TextFormField(
            controller: controller,
            inputFormatters: inputFormatters,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: keyboardType ?? TextInputType.text,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 10, left: 10),
                prefixIcon: isIcon,
                hintText: hintText,
                border: const OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}
