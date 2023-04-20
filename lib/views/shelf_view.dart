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
      body: Container(color: Colors.green.shade50),
    );
  }
}
