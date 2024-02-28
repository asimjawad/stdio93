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
        canvasColor: const Color(0xFFF9F9F9),
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 24,
        ),
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        textTheme: const TextTheme(),
      ),
      restorationScopeId: 'root',
    );
  }
}
