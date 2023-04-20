import 'package:flutter/material.dart';
import 'package:reading_app_flutter/views/widgets/app_bar.dart';
import 'package:reading_app_flutter/views/widgets/drawer.dart';

class ShelfView extends StatelessWidget {
  const ShelfView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: PixelShelfAppBar(title: 'Shelf'),
        ),
        drawer: const PixelShelfDrawer(),
        body: ListView.separated(
          // make each item closer together
          padding: const EdgeInsets.all(5),
          itemCount: 8,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 170,
              child: Row(
                children: [
                  Image.asset(
                    'images/book_$index.png',
                    height: 170,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 0),
                  Expanded(
                    child: SizedBox(
                      height: 170,
                      child: ListTile(
                        tileColor: Colors.green.shade100,
                        title: Text('Book $index'),
                        subtitle: Text('Author $index'),
                        trailing: const Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ));
  }
}
