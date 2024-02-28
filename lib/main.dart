import 'package:flutter/material.dart';
import 'package:stdio93/application/application.dart';
import 'package:stdio93/application/injector.dart';
import 'package:stdio93/application/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  runApp(
    const Injector(
      application: Application(),
    ),
  );
}
