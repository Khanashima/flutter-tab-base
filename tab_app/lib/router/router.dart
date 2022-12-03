import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';
import '../presentation/article_detail/article_detail_page.dart';
import '../presentation/article_list/artilce_list_page.dart';
import '../presentation/detail/detail_page.dart';
import '../presentation/list/list_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(title: "トップページ"),
      routes: <RouteBase>[
        GoRoute(
          path: 'list',
          builder: (BuildContext context, GoRouterState state) {
            return const ListPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'detail',
              builder: (BuildContext context, GoRouterState state) {
                return const DetailPage();
              },
            )
          ],
        ),
        GoRoute(
          path: 'article/list',
          builder: (BuildContext context, GoRouterState state) {
            return const ArticleListPage();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'detail',
              builder: (BuildContext context, GoRouterState state) {
                return const ArticleDetailPage();
              },
            )
          ],
        )
      ],
    ),
  ],
);
