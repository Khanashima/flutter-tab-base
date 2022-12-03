import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('記事詳細画面'),
        ),
        body: const Center(
          child: Text('記事詳細画面'),
        ),
      );
  }
}
