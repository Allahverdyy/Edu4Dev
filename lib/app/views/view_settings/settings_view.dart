import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/app/views/view_settings/bloc/settings_view_model.dart';
import 'package:edu4dev/app/views/view_settings/bloc/settings_event.dart';
import 'package:edu4dev/app/views/view_settings/bloc/settings_state.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/widgets/custom_app_bar_widgets.dart';
import 'package:edu4dev/core/widgets/custom_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  void isNotification(bool event, BuildContext context) {
    context.read<SettingsViewModel>().add(SettingsEvent(event));
    event ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsViewModel(),
      child: BlocBuilder<SettingsViewModel, SettingsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              title: L10n.of(context)!.settings,
              onPressed: () {
                context.router.replace(const HomeViewRoute());
              },
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      CustomListTile(
                          leading: const Icon(
                            Icons.notification_add_sharp,
                            color: AppLightColorConstants.bgError,
                          ),
                          title: L10n.of(context)!.settings,
                          trailing: CupertinoSwitch(
                            value: context
                                    .read<SettingsViewModel>()
                                    .state
                                    .isNotification
                                ? true
                                : false,
                            onChanged: (value) {
                              isNotification(value, context);
                            },
                          )),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(Icons.logout_rounded),
                        title: L10n.of(context)!.logout,
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(Icons.logout_rounded),
                        title: L10n.of(context)!.logout,
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(Icons.logout_rounded),
                        title: L10n.of(context)!.logout,
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(Icons.logout_rounded),
                        title: L10n.of(context)!.logout,
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(Icons.logout_rounded),
                        title: L10n.of(context)!.logout,
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(Icons.logout_rounded),
                        title: L10n.of(context)!.logout,
                        trailing: const Icon(Icons.arrow_forward_ios_sharp),
                      ),
                      // CustomCard(
                      //   prefixIcon: Icons.person,
                      //   name: L10n.of(context)!.personalInfo,
                      //   suffixIcon: Icons.arrow_forward_ios_rounded,
                      //   iconColor: const Color(0xFF304EFE),
                      //   shadowColor: const Color(0xFFeaebff),
                      //   onPressed: () {
                      //     // context.router.push(const UserInfoViewRoute());
                      //   },
                      // ),
                      // CustomCard(
                      //   prefixIcon: Icons.language,
                      //   name: L10n.of(context)!.language,
                      //   suffixIcon: Icons.arrow_forward_ios_rounded,
                      //   iconColor: const Color(0xFF439f48),
                      //   shadowColor: const Color(0xff4e9f5e9),
                      //   onPressed: () {
                      //     // context.router.push(const LanguageViewRoute());
                      //   },
                      // ),
                      // CustomCard(
                      //   prefixIcon: Icons.lock,
                      //   name: L10n.of(context)!.changePassword,
                      //   suffixIcon: Icons.arrow_forward_ios_rounded,
                      //   iconColor: const Color(0xFF2a2a2a),
                      //   shadowColor: const Color(0xFFb8b8b8),
                      //   onPressed: () {
                      //     // context.router.push(const PasswordViewRoute());
                      //   },
                      // ),
                      // CustomCard(
                      //   prefixIcon: Icons.article,
                      //   name: L10n.of(context)!.privacyPolicy,
                      //   suffixIcon: Icons.arrow_forward_ios_rounded,
                      //   iconColor: const Color(0xFF304EFE),
                      //   shadowColor: const Color(0xFFeaebff),
                      //   onPressed: () {
                      //     // context.router.push(const NotFoundViewRoute());
                      //   },
                      // ),
                      //  CustomCard(
                      //   prefixIcon: Icons.logout,
                      //   name: L10n.of(context)!.logout,
                      //   suffixIcon: Icons.arrow_forward_ios_rounded,
                      //   iconColor: Color(0xFFfe3b30),
                      //   shadowColor: Color(0xFFffebed),
                      //   showDivider: false,
                      //   onPressed: () {
                      //     // context.router.push(const LoginViewRoute());
                      //   },
                      // )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
