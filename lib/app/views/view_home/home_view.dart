import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/core/constants/dark_theme_color_constant.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/widgets/glass_effect_button_widgets.dart';
import 'package:edu4dev/core/widgets/home_button_widgets.dart';
import 'package:flutter/material.dart';


@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 3, 153),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: SizedBox(
                  height: 50,
                  child: Text(
                              L10n.of(context)!.homepage,
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Georgia',
                                fontSize: 20,
                                letterSpacing: 1
                              ),
                            ),
                ),
              )
            ],
          ),
          Expanded(
              child: Container(
            height: double.infinity,
            decoration:  BoxDecoration(
              // shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomRight
                .add(Alignment.bottomLeft),
                end: Alignment.topLeft,
                colors: const [
                AppLightColorConstants.dividerAccent,
                AppLightColorConstants.onBoardingColor,
                AppLightColorConstants.borderAccent
              ]),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 20),
                children: [
                  //1. box
                  GlassEffectButton(text: L10n.of(context)!.frontEndDev,),
                  GlassEffectButton(text: L10n.of(context)!.backEndDev),
                  GlassEffectButton(text: L10n.of(context)!.fullStackDev),
                  GlassEffectButton(text: L10n.of(context)!.mobileDev),
                  GlassEffectButton(text: L10n.of(context)!.softwareDev),
                  GlassEffectButton(text: L10n.of(context)!.devopsDev),
                  
                ]),
          ))
        ],
      ),
    );
  }
}

