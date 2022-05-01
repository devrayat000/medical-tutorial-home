import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_helper/src/screens/router.dart';
import 'package:study_helper/src/services/api.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:study_helper/src/utils/exception.dart';

// Global options
final options = CacheOptions(
  store: MemCacheStore(),
  policy: CachePolicy.request,
  hitCacheOnErrorExcept: [401, 403],
  maxStale: const Duration(hours: 1),
  priority: CachePriority.normal,
  cipher: null,
  keyBuilder: CacheOptions.defaultCacheKeyBuilder,
  allowPostMethod: false,
);

void main() {
  runZonedGuarded(() async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    final _dio = Dio();
    _dio
      ..interceptors.add(DioCacheInterceptor(options: options))
      ..interceptors.add(dioLoggerInterceptor);

    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      exit(1);
    };

    // Set the ErrorWidget's builder before the app is started.
    ErrorWidget.builder = (details) {
      // This is how to tell if you're in debug mode: Assertions are only executed in
      // debug mode.
      bool inDebug = false;
      assert(() {
        inDebug = true;
        return true;
      }());
      // If we're in debug mode, use the normal error widget which shows the error
      // message:
      if (inDebug) {
        return ErrorWidget(details.exception);
      }

      final e = details.exception;
      // In release builds, show a yellow-on-blue message instead:
      return Container(
        alignment: Alignment.center,
        child: Text(
          e is AppException ? e.message : 'Error!\n${details.exception}',
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        ),
      );
    };

    FlutterNativeSplash.remove();

    runApp(
      RepositoryProvider(
        create: (_) =>
            RestClient(_dio, baseUrl: 'https://mtrcrm.herokuapp.com/api/'),
        child: const MyApp(),
      ),
    );
  }, (Object error, StackTrace stack) {
    exit(1);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Study Helper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        backgroundColor: const Color(0xFF253334),
        scaffoldBackgroundColor: const Color(0xFF253334),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }
}
