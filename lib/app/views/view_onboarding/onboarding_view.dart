import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingPages(context).length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 2,
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Image.asset(
                      onboardingPages(context)[index][1]!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (pageIndex) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: AnimatedContainer(
                                curve: Curves.easeIn,
                                duration: Duration(milliseconds: 500),
                                width: pageIndex == index
                                    ? MediaQuery.of(context).size.width * 0.04
                                    : MediaQuery.of(context).size.width * 0.08,
                                height:
                                    MediaQuery.of(context).size.height * 0.008,
                                decoration: BoxDecoration(
                                    color: pageIndex == index
                                        ? Color.fromRGBO(48, 79, 254, 1)
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(32)),
                              ),
                            )),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.25,
                    padding: EdgeInsets.only(top: 60, left: 40, right: 40),
                    child: Text(
                      onboardingPages(context)[index][0]!,
                      style: const TextStyle(
                        // color: context.isDark
                        //   ? Colors.white
                        //   : Colors.black,
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        height: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  GestureDetector(
                    onTap: () {
                      // context.read<OnboardingViewModel>().add(
                      //     IndicatorIncrementEvent(
                      //         index, context, pageController));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(48, 79, 254, 1),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Center(
                        child: Text(
                          // L10n.of(context)!.next,
                          '',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }

  List onboardingPages(BuildContext context) {
    return [
      [
        // L10n.of(context)!.onboardFirstTitle,
        // Assets.images.png.imageOnboardingFirst.path
      ],
      [
        // L10n.of(context)!.onboardSecondTitle,
        // Assets.images.png.imageOnboardingSecond.path
      ],
      [
        // L10n.of(context)!.onboardThirdTitle,
        // Assets.images.png.imageOnboardingThird.path
      ],
    ];
  }
}
