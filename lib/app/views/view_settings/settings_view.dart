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
                          // context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(
                          Icons.person_2_outlined,
                          color: AppLightColorConstants.bgAccent,
                        ),
                        title: L10n.of(context)!.myProfile,
                        trailing:  Icon(Icons.arrow_forward_ios_sharp,  color: AppLightColorConstants.greyteam1,),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(
                          Icons.language_outlined,
                          color: AppLightColorConstants.successColor,
                        ),
                        title: L10n.of(context)!.language,
                        trailing:  Icon(Icons.arrow_forward_ios_sharp,  color: AppLightColorConstants.greyteam1,),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: Icon(
                          Icons.key_rounded,
                          color: AppLightColorConstants.greyteam1,
                        ),
                        title: L10n.of(context)!.changePassword,
                        trailing: Icon(Icons.arrow_forward_ios_sharp, color: AppLightColorConstants.greyteam1,),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(Icons.privacy_tip_outlined, color: AppLightColorConstants.bgAccent,),
                        title: L10n.of(context)!.privacyPolicy,
                        trailing:  Icon(Icons.arrow_forward_ios_sharp,  color: AppLightColorConstants.greyteam1,),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      CustomListTile(
                        ontap: () {
                          context.router.replace(const SignInViewRoute());
                        },
                        leading: const Icon(Icons.logout_rounded, color: AppLightColorConstants.bgError,),
                        title: L10n.of(context)!.logout,
                        trailing:  Icon(Icons.arrow_forward_ios_sharp,  color: AppLightColorConstants.greyteam1,),
                      ),
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
