import 'package:edu4dev/starter.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';


Future<void> main(List<String> args) async {
  Flavor.create(
    Environment.production,
    name: "Prod",
    color: const Color.fromARGB(255, 47, 9, 112),
  );
  launchApp();
}
