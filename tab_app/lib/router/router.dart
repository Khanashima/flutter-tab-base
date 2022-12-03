import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';
import '../presentation/article_detail/article_detail_page.dart';
import '../presentation/article_list/artilce_list_page.dart';
import '../presentation/common/tab.dart';
import '../presentation/detail/detail_page.dart';
import '../presentation/list/list_page.dart';
import '../presentation/rule/rule_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

// GoRouter configuration
final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    //タブのない画面
    GoRoute(path: '/rule', builder: (context, state) => const RulePage()),
    //タブありの画面
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/',
            builder: (context, state) => const MyHomePage(title: "トップページ"),
            routes: <RouteBase>[
              GoRoute(
                path: 'home/list',
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
                  ),
                  GoRoute(
                    path: 'adetail',
                    builder: (BuildContext context, GoRouterState state) {
                      return const DetailPage();
                    },
                  )
                ],
              )
            ],
          ),
        ]),
  ],
);
