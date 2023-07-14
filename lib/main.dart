import 'package:david_hyll/core/services/http_service.dart';
import 'package:david_hyll/core/utils/dependency_injection.dart';
import 'package:david_hyll/core/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencyInjection();
  HttpService httpService = getIt<HttpService>();
  httpService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: goRouter,

    );
  }
}
