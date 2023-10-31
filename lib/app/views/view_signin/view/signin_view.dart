import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_event.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_state.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_view_model.dart';
import 'package:edu4dev/app/views/view_signup/view/signup_view.dart';
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
            body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'HOŞGELDİNİZ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Text(
                      'Hesabınız yok mu?',
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpView()));
                        },
                        child: const Text('Kayıt Olun'))
                  ],
                ),
                Column(
                  children: [
                    textInput(
                        'E-mail',
                        'E-mail',
                        context,
                        const Icon(Icons.email_outlined),
                        context.read<SignInViewModel>().emailController,
                        ),
                        
                    textInput(
                        'Password',
                        'Password',
                        context,
                        const Icon(Icons.key),
                        context.read<SignInViewModel>().passwordController),
                    const SizedBox(height: 25),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<SignInViewModel>()
                                  .add(SignInInitialEvent(context));
                            },
                            child: const Text('Giriş Yap')))
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
