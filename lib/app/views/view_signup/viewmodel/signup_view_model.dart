// ignore_for_file: use_build_context_synchronously

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_event.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_state.dart';
import 'package:edu4dev/core/repository/model/auth/sign%20out/signup_request_model.dart';
import 'package:edu4dev/core/repository/services/auth_service.dart';
import 'package:edu4dev/core/widgets/snackbar_widget.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewModel extends Bloc<SignUpEvent, SignUpState> {
  BuildContext context;
  SignUpViewModel(
    this.context,
  ) : super(SignUpInitial()) {
    on<SignUpInitialEvent>(_onSignUpInitialEvent);
    // on<SignUpVisibilityEvent>(_onSignUpVisibilityEvent);
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController surNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController adressController = TextEditingController();

  AuthService authService = AuthService();

  Future<FutureOr<void>> _onSignUpInitialEvent(
      SignUpInitialEvent event, Emitter<SignUpState> emit) async {
    try {
      await authService.signUp(SignUpRequestModel(
          name: nameController.text,
          surname: surNameController.text.trim(),
          address: adressController.text,
          phoneNumber: phoneController.text.trim(),
          email: emailController.text.trim(),
          password: passwordController.text.trim()));
      ScaffoldMessenger.of(event.context).showSnackBar(SnackBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: SnackBarWidget.success(
            subTitle: 'Kayıt başarılı, Giriş sayfasına yönlendiriliyorsunuz...',
          )));
      Future.delayed(const Duration(seconds: 2), () {
        context.router.push(const SignInViewRoute());
      });
    } catch (e, stack) {
      FirebaseCrashlytics.instance.recordError(e, stack, fatal: true);
    }
  }

  // Future<FutureOr<void>> _onSignUpVisibilityEvent(
  //     SignUpVisibilityEvent event, Emitter<SignUpState> emit) async {
  //   emit(SignUpVisibility(event.visibilityText));
  // }
}
