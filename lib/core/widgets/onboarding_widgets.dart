import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/app/views/view_splash/splash_view.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:flutter/material.dart';

final PageController controller = PageController(initialPage: 0);
// ignore: non_constant_identifier_names
Widget OnboardingWidget({
  required pageIndex,
  required String image,
  required title,
  required desc,
  required BuildContext context,
  required void Function()? ontap
}) {
  return Column(
    mainAxisAlignment: context.center,
    children: [
      Image.asset(image),
      SizedBox(
        height: context.constLowValue,
      ),
      Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      SizedBox(height: context.constLowValue),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
        ),
        child: Text(
          desc,
          textAlign: context.textcenter,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      const SizedBox(height: 120),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment:
              pageIndex == 2 ? context.center : context.spaceBetween,
          children: [
            Visibility(
              visible:
                  pageIndex != 2, // don't show on page with index 2 (last page)
              child: GestureDetector(
                onTap: ontap,
                child: Text(
                  L10n.of(context)!.skip,
                  textAlign: context.textcenter,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: AppLightColorConstants.bgLight,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: ontap,
              child: pageIndex == 2
                  ? Container(
                      width: context.width / 3,
                      height: context.height / 20,
                      alignment: context.acenter,
                      decoration: BoxDecoration(
                        color: AppLightColorConstants.bgWarning,
                        borderRadius: context.bordercirnormal,
                      ),
                      child: Text(
                        L10n.of(context)!.getStarted,
                        textAlign: context.textcenter,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Container(
                      width: context.width / 7,
                      height: context.height / 20,
                      decoration: BoxDecoration(
                        color: AppLightColorConstants.bgWarning,
                        borderRadius: context.bordercirnormal,
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppLightColorConstants.bgSuccessLight,
                      ),
                    ),
            )
          ],
        ),
      )
    ],
  );
}
