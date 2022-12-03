import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';
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
        )
      ],
    ),
  ],
);
