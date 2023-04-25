import 'package:flutter/material.dart';
import 'package:reading_app_flutter/views/book_view.dart';
import '../book_info_view.dart';


class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(5),
      itemCount: 8,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 170,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BookInfoView(
                        index: index,
                      ),
                    ),
                  );
                },
                child: Image.asset(
                  'images/book_$index.png',
                  height: 170,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 0),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookListView(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      SizedBox(
                        height: 85,
                        child: ListTile(
                          tileColor: Colors.green.shade100,
                          title: Text('Book $index'),
                          subtitle: Text('Author $index'),
                          trailing: const Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(255, 30, 109, 47),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 85,
                        child: ListTile(
                          tileColor: Colors.green.shade100,
                          trailing: const Icon(
                            Icons.more_vert,
                            color: Color.fromARGB(255, 30, 109, 47),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 1,
        );
      },
    );
  }
}
