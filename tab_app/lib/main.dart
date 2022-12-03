import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tab_app/presentation/common/tab.dart';
import 'router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '遷移のサンプル',
            ),
            ElevatedButton(
              child: const Text('一覧へ'),
              onPressed: () {
                context.go('/home/list');
              },
            ),
            ElevatedButton(
              child: const Text('pushで詳細へ'),
              onPressed: () {
                context.push('/home/list/detail');
              },
            ),
            ElevatedButton(
              child: const Text('goで詳細へ'),
              onPressed: () {
                context.go('/home/list/detail');
              },
            ),
            ElevatedButton(
              child: const Text('記事一覧へ'),
              onPressed: () {
                context.go('/article/list');
              },
            ),
            ElevatedButton(
              child: const Text('記事詳細へ'),
              onPressed: () {
                context.go('/article/list/detail');
              },
            ),
            ElevatedButton(
              child: const Text('利用規約へ'),
              onPressed: () {
                context.go('/rule');
              },
            ),
          ],
        ),
      ),
    );
  }
}
