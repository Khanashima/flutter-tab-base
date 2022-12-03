import 'package:flutter/material.dart';

class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('記事一覧画面'),
        ),
        body: const Center(
          child: Text('記事一覧画面'),
        ),
      );
  }
}
