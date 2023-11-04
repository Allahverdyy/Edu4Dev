import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/app/l10n/app_localizations.dart';
import 'package:edu4dev/app/routes/app_router.gr.dart';
import 'package:edu4dev/app/views/view_profile/view_model/profile_state.dart';
import 'package:edu4dev/app/views/view_profile/view_model/profile_view_model.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:edu4dev/core/widgets/custom_app_bar_widgets.dart';
import 'package:edu4dev/core/widgets/profile_list_widgets.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileViewModel(),
      child: BlocBuilder<ProfileViewModel, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              title: L10n.of(context)!.myProfile,
              titleTextStyle:
                  Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: context.isDark ? Colors.white : Colors.black,
                      ),
              onPressed: () {
                context.router.replace(HomeViewRoute());
              },
            ),
            body: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.mode_edit_sharp),
                              onPressed: () {
                                context.router.push(const HomeViewRoute());
                              },
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(
                            Assets.images.png.imagesSplashViewLogo.path,
                          ),
                          child: InkWell(
                            onDoubleTap: () {},
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(L10n.of(context)!.mail),
                        const SizedBox(height: 30),
                        Text(L10n.of(context)!.fullName),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProfileListWidgets(
                            leading: const Icon(Icons.dark_mode_outlined),
                            title: L10n.of(context)!.darkMode,
                            trailing: CupertinoSwitch(
                              value:
                                  context.read<ProfileViewModel>().state.isDark
                                      ? true
                                      : false,
                              onChanged: (value) {
                                isDarkMode(value, context);
                              },
                            )),
                        const Divider(
                          thickness: 1,
                        ),
                        ProfileListWidgets(
                          ontap: () {},
                          leading: const Icon(Icons.abc),
                          title: L10n.of(context)!.myCv,
                          trailing: const Icon(Icons.arrow_forward_ios_sharp),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        ProfileListWidgets(
                          ontap: () {
                          },
                          leading: const Icon(Icons.settings),
                          title: L10n.of(context)!.settings,
                          trailing: const Icon(Icons.arrow_forward_ios_sharp),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        ProfileListWidgets(
                          ontap: () {
                            context.router.replace(const SignInViewRoute());
                          },
                          leading: const Icon(Icons.logout_rounded),
                          title: L10n.of(context)!.logout,
                          trailing: const Icon(Icons.arrow_forward_ios_sharp),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
          );
        },
      ),
    );
  }
}
