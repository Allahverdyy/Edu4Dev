import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/views/view_signin/view/signin_view.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_event.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_state.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_view_model.dart';
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
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Center(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text('Kayıt ol',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Zaten hesabınız var mı?',
                              style: TextStyle(fontSize: 18),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignInView(),
                                ));
                              },
                              child: const Text('Giriş yap'),
                            ),
                          ],
                        ),
                        textInput('İsim', 'isminizi giriniz', context,
                            context.read<SignUpViewModel>().nameController),
                        textInput('Soyad', 'Soyadınızı giriniz', context,
                            context.read<SignUpViewModel>().surNameController),
                        textInput(
                          'Şifre',
                          'şifrenizi giriniz',
                          context,
                          context.read<SignUpViewModel>().passwordController,
                        ),
                        textInput(
                          'E-posta',
                          'e-posta adresinizi giriniz',
                          context,
                          context.read<SignUpViewModel>().emailController,
                        ),
                        textInput(
                          'Telefon',
                          'telefon numaranızı giriniz',
                          context,
                          context.read<SignUpViewModel>().phoneController,
                        ),
                        textInput(
                          'Adres',
                          'adresinizi giriniz',
                          context,
                          context.read<SignUpViewModel>().adressController,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<SignUpViewModel>()
                                  .add(SignUpInitialEvent(context));
                            },
                            child: const Text('Kayıt ol'),
                          ),
                        ),
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
