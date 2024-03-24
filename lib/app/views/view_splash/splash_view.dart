import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/views/view_splash/view_model/splash_event.dart';
import 'package:edu4dev/app/views/view_splash/view_model/splash_state.dart';
import 'package:edu4dev/app/views/view_splash/view_model/splash_view_model.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            SplashViewModel()..add(SplashInitialEvent(context)),
        child: BlocBuilder<SplashViewModel, SplashState>(
          builder: (context, state) {
            return Scaffold(
                body: Container(
              width: context.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: context.abottomLeft,
                end: context.atopRight,
                colors: const <Color>[
                  Color.fromARGB(255, 239, 250, 255),
                  Color.fromARGB(255, 203, 245, 255),
                  Color.fromARGB(255, 138, 179, 255)
                ],
              )),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: context.height / 3,
                    ),
                    Image.asset(Assets.images.png.imagesEdu4techLogo.path),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      L10n.of(context)!.splashEdu4Tech,
                      style: const TextStyle(
                        fontSize: 25,
                        fontFamily: 'Georgia',
                      ),
                      textAlign: context.textcenter,
                    )
                  ],
                ),
              ),
            ));
          },
        ));
  }
}
