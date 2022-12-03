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
    ),
    GoRoute(
      path: '/list',
      builder: (context, state) => const ListPage(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailPage(),
    ),
  ],
);
