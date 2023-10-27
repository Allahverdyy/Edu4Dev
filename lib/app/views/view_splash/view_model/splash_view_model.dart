import 'dart:async';

// import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/views/view_splash/view_model/splash_event.dart';
import 'package:edu4dev/app/views/view_splash/view_model/splash_state.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashViewModel extends Bloc<SplashEvent, SplashState> {
  SplashViewModel() : super(SplashInitialState(true, false)) {
    on<SplashInitialEvent>(_onSplashInitial);
  }

  Future<FutureOr<void>> _onSplashInitial(
      SplashInitialEvent event, Emitter<SplashState> emit) async {
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();
    // String versionNumber = '1.0.0-dev';
    //  packageInfo.version != versionNumber
    //     ? emit(SplashInitialState(state.isNewUser, true))
    //     : emit(SplashInitialState(state.isNewUser, false));
    String phoneNumber = '';
    phoneNumber == ''
        ? emit(SplashInitialState(true, state.isVersionCheck))
        : emit(SplashInitialState(false, state.isVersionCheck));
    // state.isVersionCheck
    //     // ignore: use_build_context_synchronously
    //     ? showModalBottomSheet(
    //         context: event.context,
    //         builder: (context) {
    //           return Container(
    //             color: Colors.blue,
    //             height: 200,
    //             child: Column(
    //               children: [
    //                 const Text('New Version Available'),
    //                 const Text('Please update the app to continue'),
    //                 ElevatedButton(
    //                     onPressed: () {}, child: const Text('Update'))
    //               ],
    //             ),
    //           );
    //         })
        Future.delayed(const Duration(seconds: 3), () {
            // state.isNewUser
            //     ? event.context.router.replace(OnboardingViewRoute())
            //     : event.context.router.replace(RegistrationViewRoute());
          });
  }
}
