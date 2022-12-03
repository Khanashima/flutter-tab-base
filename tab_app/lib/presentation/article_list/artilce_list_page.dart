import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('記事一覧画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '遷移のサンプル',
            ),
            ElevatedButton(
              child: const Text('HOMEの詳細画面を記事タブで表示'),
              onPressed: () {
                context.push('/article/list/adetail');
              },
            )])
      ),
    );
  }
}
