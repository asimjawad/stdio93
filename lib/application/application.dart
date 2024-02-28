import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stdio93/application/router/app_router.dart';
import 'package:stdio93/application/theme/app_colors.dart';

final appRouter = AppRouter.instance.buildRouter();

class Application extends ConsumerStatefulWidget {
  const Application({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends ConsumerState<Application> {
  // final appTheme = AppTheme.instance.defaultThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Test',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: kPrimaryColor,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: kBlackColor,
          ),
        ),
        canvasColor: const Color(0xFFF9F9F9),
        iconTheme: const IconThemeData(
          color: kBlackColor,
          size: 24,
        ),
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.light,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: kPrimaryColor,
            secondary: kBlackColor,
            primary: kPrimaryColor),
        textTheme: const TextTheme(
          labelSmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: kBlackColor,
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: kBlackColor,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: kBlackColor,
          ),
        ),
      ),
      restorationScopeId: 'root',
    );
  }
}
