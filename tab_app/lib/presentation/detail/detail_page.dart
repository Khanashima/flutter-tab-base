import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('詳細画面'),
        ),
        body: const Center(
          child: Text('詳細画面'),
        ),
      );
  }
}
