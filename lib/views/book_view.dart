import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book View'),
      ),
      body: const Center(
        child: Text('Book View'),
      ),
    );
  }
}
