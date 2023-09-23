import 'package:flutter_best_practices/presentation/home/home_screen.dart';
import 'package:flutter_best_practices/presentation/testScreens/test_screens.dart';
import 'package:go_router/go_router.dart';

class AppRouteManager {
  static final appRoutes = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'screen0',
            builder: (context, state) => const Screen1(),
          ),
          GoRoute(
            path: 'screen1',
            builder: (context, state) => const Screen2(),
          ),
          GoRoute(
            path: 'screen2',
            builder: (context, state) => const Screen3(),
          ),
          GoRoute(
            path: 'screen3',
            builder: (context, state) => const Screen4(),
          ),
          GoRoute(
            path: 'screen4',
            builder: (context, state) => const Screen5(),
          ),
        ]),
  ]);
}
