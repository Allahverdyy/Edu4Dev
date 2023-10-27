import 'package:edu4dev/app/views/view_splash/view_model/splash_view_model.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashViewModel(),
      child: Scaffold(
          body: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: <Color>[
            Color.fromARGB(255, 239, 250, 255),
            Color.fromARGB(255, 203, 245, 255),
            Color.fromARGB(255, 138, 179, 255)
          ],
        )),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 3,
              ),
              Image.asset(Assets.images.png.imagesSplashViewLogo.path),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'EDU4TECH \nDEVELOPER PLATFORM',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Georgia',
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      )),
    );
  }
}
