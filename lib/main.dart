import 'dart:io';

import 'package:android_intent_plus/android_intent.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_logger/dio_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:study_helper/src/screens/router.dart';
import 'package:study_helper/src/services/api.dart';
import 'package:study_helper/src/utils/theme.dart';
import 'package:url_launcher/link.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final _dio = Dio();
  _dio
    ..interceptors.add(DioCacheInterceptor(options: options))
    ..interceptors.add(dioLoggerInterceptor);

  FlutterNativeSplash.remove();

  runApp(
    RepositoryProvider(
      create: (_) => RestClient(_dio),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Study Helper',
      debugShowCheckedModeBanner: false,
      theme: theme,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
    );
  }

  static final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, state) =>
            const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    ],
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Link(
            uri: Uri.parse('https://www.youtube.com/watch?v=lY2yjAdbvdQ'),
            builder: (_, onPressed) => FloatingActionButton(
              onPressed: onPressed,
              tooltip: 'Intent',
              child: const Icon(Icons.add),
            ),
          ),
          FloatingActionButton(
            onPressed: () async {
              if (Platform.isAndroid) {
                const intent = AndroidIntent(
                  action: 'action_view',
                  data: 'https://www.youtube.com/watch?v=lY2yjAdbvdQ',
                );
                await intent.launch();
              }
            },
            tooltip: 'Launcher',
            child: const Icon(Icons.video_call),
          ),
        ],
      ),
    );
  }
}
