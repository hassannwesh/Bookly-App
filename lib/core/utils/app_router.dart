import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/models/repos/home_repo.dart';
import 'package:bookly_app/feature/home/data/models/repos/home_repo_impl.dart';
import 'package:bookly_app/feature/home/presentation/manger/similar_books/similar_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/feature/search/presentation/views/search_view.dart';
import 'package:bookly_app/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kBookDetailsView = '/bookdetailsview';
  static const kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
              create: (context) =>SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(
              bookModel:state.extra as BookModel,
            ));
        },
      ),
    ],
  );
}
