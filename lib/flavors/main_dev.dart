

import 'package:edu4dev/app/app.dart';
import 'package:edu4dev/firebase_options.dart';
import 'package:edu4dev/starter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


Future<void> main(List<String> args) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    // await FirebaseMessaging.instance.setAutoInitEnabled(true);
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    runApp(const App());

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );
  
  Flavor.create(
    Environment.dev,
    name: "Dev",
    color: Colors.green,
  );
  launchApp();
}
