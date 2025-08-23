import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
static const kHomeView='/homeview';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: kHomeView,
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
        ],
      ),
    ],
  );
}