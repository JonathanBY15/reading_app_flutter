import 'package:flutter/material.dart';
import 'package:reading_app_flutter/views/widgets/drawer.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // change the color of the text and icons in the app bar
        foregroundColor: Colors.green.shade50,
        title: const Text('Favorites'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // open a search bar
            },
          ),
          PopupMenuButton(
            color: Colors.green.shade50,
            icon: const Icon(Icons.sort),
            onSelected: (value) {
              // Do something when a menu item is selected
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                value: 'nameAZ',
                child: Text('Name (A-Z)'),
              ),
              const PopupMenuItem(
                value: 'nameZA',
                child: Text('Name (Z-A)'),
              ),
              const PopupMenuItem(
                value: 'pagesHigh',
                child: Text('Pages (High)'),
              ),
              const PopupMenuItem(
                value: 'pagesLow',
                child: Text('Pages (Low)'),
              ),
              const PopupMenuItem(
                value: 'completionHigh',
                child: Text('Completion (High)'),
              ),
              const PopupMenuItem(
                value: 'completionLow',
                child: Text('Completion (Low)'),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {
              // open a search bar
            },
          ),
        ],
      ),
      drawer: const DrawerMenu(),
      body: Container(color: Colors.green.shade50),
    );
  }
}
