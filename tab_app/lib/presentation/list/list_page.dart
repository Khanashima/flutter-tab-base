import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '一覧画面',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('一覧画面'),
        ),
        body: const Center(
          child: Text('一覧画面'),
        ),
      ),
    );
  }
}
