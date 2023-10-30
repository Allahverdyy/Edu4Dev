import 'dart:async';

import 'package:edu4dev/app/views/view_signin/view/signin_view.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_event.dart';
import 'package:edu4dev/app/views/view_signup/viewmodel/signup_state.dart';
import 'package:edu4dev/core/repository/model/auth/sign%20out/signup_request_model.dart';
import 'package:edu4dev/core/repository/services/auth_service.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewModel extends Bloc<SignUpEvent, SignUpState> {
  SignUpViewModel() : super(SignUpInitial()) {
    on<SignUpInitialEvent>(_onSignUpInitialEvent);
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

      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(event.context).push(MaterialPageRoute(builder: (context) {
          return const SignInView();
        }));
      });
    } catch (e, stack) {
      FirebaseCrashlytics.instance.recordError(e, stack, fatal: true);
    }
  }
}
