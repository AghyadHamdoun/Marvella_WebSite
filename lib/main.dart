import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:marvella/app/app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('ar', 'SA'),
        child:const MyApp()
    ),
  );
}
