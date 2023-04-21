import 'package:flutter/material.dart';
import 'package:reading_app_flutter/views/widgets/app_bar.dart';
import 'package:reading_app_flutter/views/widgets/book_list.dart';
import 'package:reading_app_flutter/views/widgets/drawer.dart';

class ShelfView extends StatelessWidget {
  const ShelfView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: PixelShelfAppBar(title: 'Shelf'),
      ),
      drawer: PixelShelfDrawer(),
      body: BookList(),
    );
  }
}
