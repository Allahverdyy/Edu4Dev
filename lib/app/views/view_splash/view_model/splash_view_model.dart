import 'dart:async';
import 'package:edu4dev/app/views/view_splash/view_model/splash_event.dart';
import 'package:edu4dev/app/views/view_splash/view_model/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashViewModel extends Bloc<SplashEvent, SplashState> {
  SplashViewModel() : super(SplashInitialState()) {
    on<SplashInitialEvent>(_onSplashInitial);
  }

  Future<FutureOr<void>> _onSplashInitial(
      SplashInitialEvent event, Emitter<SplashState> emit) async {
        Future.delayed(const Duration(seconds: 3), () {
            // state.isNewUser
            //     ? event.context.router.replace(OnboardingViewRoute())
            //     : event.context.router.replace(RegistrationViewRoute());
          });
  }
}