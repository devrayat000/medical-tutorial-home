import 'package:go_router/go_router.dart';
import 'package:study_helper/src/models/category.dart';
import 'package:study_helper/src/screens/category/category.dart';
import 'package:study_helper/src/screens/home/home.dart';
import 'package:study_helper/src/screens/lecture/lecture.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => HomeScreen(),
      routes: [
        GoRoute(
          path: 'category',
          builder: (_, state) => CategoryScreen(),
          routes: [
            GoRoute(
              path: ':categoryId',
              builder: (_, state) {
                final category = state.extra as CategoryBase;
                return LectureScreen(category: category);
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
