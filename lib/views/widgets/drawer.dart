import 'package:flutter/material.dart';
import '../favorites_view.dart';
import '../shelf_view.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green.shade50,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'images/logo.png',
                    height: 60,
                    width: 60,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    '     PixelShelf',
                    style: TextStyle(
                      color: Colors.green.shade50,
                      fontSize: 36,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.shelves),
            title: const Text('Shelf'),
            // navigate to Shelf view on tap
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShelfView()),
              );
            },
          ),
          ListTile(
            iconColor: Colors.green,
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites'),
            // navigate to favorites view on tap
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavoritesView()),
              );
            },
          ),
          const ListTile(
            iconColor: Colors.green,
            leading: Icon(Icons.collections_bookmark),
            title: Text('Collections'),
          ),
          const ListTile(
            iconColor: Colors.green,
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
