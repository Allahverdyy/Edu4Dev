import 'dart:async';

import 'package:edu4dev/app/views/view_signin/viewmodel/signin_event.dart';
import 'package:edu4dev/app/views/view_signin/viewmodel/signin_state.dart';
import 'package:edu4dev/app/views/view_splash/splash_view.dart';
import 'package:edu4dev/core/repository/model/auth/sign%20in/signin_request_model.dart';
import 'package:edu4dev/core/repository/services/auth_service.dart';
import 'package:edu4dev/core/widgets/snackbar_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewModel extends Bloc<SignInEvent, SignInState> {
  SignInViewModel() : super(SignInInitialState()) {
    on<SignInInitialEvent>(_initial);
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  AuthService authService = AuthService();

  Future<FutureOr<void>> _initial(
      SignInInitialEvent event, Emitter<SignInState> emit) async {
    try {
      await authService.signIn(SignInRequestModel(
          email: emailController.text.trim(),
          password: passwordController.text.trim()));
      ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: SnackBarWidget.success(
            subTitle: 'Giriş başarılı, ana sayfaya yönlendiriliyorsunuz...',
          )));
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(event.context)
            .push(MaterialPageRoute(builder: (context) => const SplashView()));
      });
    } catch (e, stack) {
      FirebaseCrashlytics.instance.recordError(e, stack, fatal: true);
      FirebaseAuthException exception = e as FirebaseAuthException;
      exception.code == 'invalid-email'
          ? Future.delayed(const Duration(seconds: 2), () {
              ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  content: SnackBarWidget.error(
                    subTitle: 'Email formatınız hatalı',
                  )));
            })
          : Future.delayed(const Duration(seconds: 2), () {
              ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  content: SnackBarWidget.error(
                    subTitle: 'Email veya şifre hatalı',
                  )));
            });
    }
  }
}
