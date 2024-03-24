import 'package:flutter/material.dart';

abstract class SignUpEvent {}

class SignUpInitialEvent extends SignUpEvent {
  BuildContext context;
  SignUpInitialEvent(this.context);
}

// class SignUpVisibilityEvent extends SignUpEvent {
//   bool visibilityText = true;
//   SignUpVisibilityEvent(this.visibilityText);
// }
