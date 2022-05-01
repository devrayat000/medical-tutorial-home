import 'package:go_router/go_router.dart';
import 'package:study_helper/src/screens/home/home.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => HomeScreen(),
    ),
  ],
);
