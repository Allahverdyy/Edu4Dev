

import 'package:edu4dev/starter.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';


Future<void> main(List<String> args) async {
  Flavor.create(
    Environment.dev,
    name: "Dev",
    color: Colors.green,
  );
  launchApp();
}
