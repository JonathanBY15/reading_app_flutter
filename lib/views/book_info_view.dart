import 'package:flutter/material.dart';

class BookInfoView extends StatelessWidget {
  final int index;

  const BookInfoView({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book $index'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/book_$index.png',
              height: 170,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              'Book $index',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 10),
            Text(
              'Author $index',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
