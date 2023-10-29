import 'package:edu4dev/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:firebase_core/firebase_core.dart';


Future<void> launchApp() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light,
  );


  await Hive.initFlutter();
  runApp(const App());
}
