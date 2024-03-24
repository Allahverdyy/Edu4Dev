import 'package:auto_route/auto_route.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/app/views/view_onboarding/view_model/onboarding_event.dart';
import 'package:edu4dev/app/views/view_onboarding/view_model/onboarding_state.dart';
import 'package:edu4dev/app/views/view_onboarding/view_model/onboarding_view_model.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/core/widgets/onboarding_widgets.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/bottom_right_top_left_icon_widgets.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppLightColorConstants.bgPrimaryColor,
      body: Stack(
        children: [
          const BottomRightAndTopLeftIcon(),
          BlocProvider(
            create: (context) => OnboardingBloc(),
            child: BlocBuilder<OnboardingBloc, OnboardingStates>(
              builder: (context, state) {
                return Stack(
                  alignment: context.acenter,
                  children: [
                    PageView(
                      controller: controller,
                      onPageChanged: (value) {
                        state.pageIndex = value;
                        BlocProvider.of<OnboardingBloc>(context)
                            .add(OnboardingEvents());
                      },
                      children: [
                        OnboardingWidget(
                          ontap: () {
                            context.router.push(const SignViewRoute());
                          },
                          context: context,
                          pageIndex: 0,
                          image: Assets.images.png.imagesOnBoardingOne.path,
                          title: L10n.of(context)!.onBoardingTitle,
                          desc: L10n.of(context)!.onBoardingOne,
                        ),
                        OnboardingWidget(
                          ontap: () {
                            context.router.push(const SignViewRoute());
                          },
                          context: context,
                          pageIndex: 1,
                          image: Assets.images.png.imagesOnBoardingTwo.path,
                          title: L10n.of(context)!.onBoardingTitleOne,
                          desc: L10n.of(context)!.onBoardingTwo,
                        ),
                        OnboardingWidget(
                          ontap: () {
                            context.router.push(const SignViewRoute());
                          },
                          context: context,
                          pageIndex: 2,
                          image: Assets.images.png.imagesOnBoardingThree.path,
                          title: L10n.of(context)!.onBoardingTitleTwo,
                          desc: L10n.of(context)!.onBoardingThree,
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 100,
                      child: DotsIndicator(
                        dotsCount: 3,
                        position: BlocProvider.of<OnboardingBloc>(context)
                            .state
                            .pageIndex,
                        decorator: DotsDecorator(
                          color: AppLightColorConstants.buttonPrimaryColor,
                          activeColor:
                              AppLightColorConstants.buttonPrimaryColor,
                          size: const Size.square(9.0),
                          activeSize: const Size(36.0, 9.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: context.bordercirnormal),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
