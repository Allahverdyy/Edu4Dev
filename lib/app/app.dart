import 'package:edu4dev/app/theme/light/light_theme_data.dart';
import 'package:edu4dev/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'l10n/app_localizations.dart';
import 'routes/app_router.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    // await FirebaseMessaging.instance.setAutoInitEnabled(true);
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  static void setLocale(BuildContext context, Locale newLocale) {
    final stateLang = context.findAncestorStateOfType<_AppState>();

    stateLang?.changeLanguage(newLocale);
  }

  static void setTheme(BuildContext context, ThemeData newThemeData) {
    final stateTheme = context.findAncestorStateOfType<_AppState>();

    stateTheme?.changeTheme(newThemeData);
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Locale _locale = const Locale('en', 'US');
  ThemeData _themeData = AppThemeLight.getTheme();

  changeTheme(ThemeData themeData) {
    setState(() {
      try {
        _themeData = themeData;
      } catch (e) {
        if (kDebugMode) {
          debugPrint(e.toString());
        }
        rethrow;
      }
    });
  }

  changeLanguage(Locale locale) {
    setState(() {
      try {
        _locale = locale;
      } catch (e) {
        // _locale = const Locale('en', 'US');
        if (kDebugMode) {
          debugPrint(e.toString());
        }
        rethrow;
      }
    });
  }

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return 
      // child: ScreenUtilInit(
        MaterialApp.router(
            supportedLocales: L10n.supportedLocales,
            localizationsDelegates: L10n.localizationsDelegates,
            debugShowCheckedModeBanner: false,
            theme: _themeData,
            locale: _locale,
            routerConfig: _appRouter.config());
      // ),
   
  }
}
