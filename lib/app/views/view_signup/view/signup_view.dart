import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/views/view_signin/view/signin_view.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_event.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_state.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_view_model.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SignUpViewModel(),
        child: BlocBuilder<SignUpViewModel, SignUpState>(
            builder: (context, state) {
          return Scaffold(
            backgroundColor: AppLightColorConstants.greyteam2,
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Center(
                    child: Column(
                      children: [
                        Text(L10n.of(context)!.signup,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold, 
                                color: AppLightColorConstants.greyteam1)),
                        Row(
                          mainAxisAlignment: context.center,
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
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignInView(),
                                ));
                              },
                              child: Text(L10n.of(context)!.signin),
                            ),
                          ],
                        ),
                        textInput(
                            L10n.of(context)!.name,
                            L10n.of(context)!.nameWrite,
                            context,
                            context.read<SignUpViewModel>().nameController),
                        textInput(
                            L10n.of(context)!.surname,
                            L10n.of(context)!.surnameWrite,
                            context,
                            context.read<SignUpViewModel>().surNameController),
                        textInput(
                          L10n.of(context)!.password,
                          L10n.of(context)!.passwordWrite,
                          context,
                          context.read<SignUpViewModel>().passwordController,
                        ),
                        textInput(
                          L10n.of(context)!.email,
                          L10n.of(context)!.emailWrite,
                          context,
                          context.read<SignUpViewModel>().emailController,
                        ),
                        textInput(
                          L10n.of(context)!.number,
                          L10n.of(context)!.numberWrite,
                          context,
                          context.read<SignUpViewModel>().phoneController,
                        ),
                        textInput(
                          L10n.of(context)!.address,
                          L10n.of(context)!.addressWrite,
                          context,
                          context.read<SignUpViewModel>().adressController,
                        ),
                        SizedBox( height: context.constLowValue,),
                        CustomButton(
                          ontap: () {
                            context
                                .read<SignUpViewModel>()
                                .add(SignUpInitialEvent(context));
                          },
                          text: L10n.of(context)!.signup,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }));
  }

  Widget textInput(
    String label,
    String hintText,
    BuildContext context,
    TextEditingController controller, {
    TextInputType? keyboardType,
    Widget? prefixIcon,
    bool isIcon = false,
    List<TextInputFormatter>? inputFormatters,
    String? Function(String?)? validator,
    void Function(String)? onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text(label, style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 10),
        SizedBox(
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            keyboardType: keyboardType ?? TextInputType.text,
            inputFormatters: inputFormatters,
            validator: validator,
            onChanged: onChanged,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 10, left: 10),
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: const Color.fromRGBO(184, 184, 184, 0.8),
              ),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ),
            style: const TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }
}
