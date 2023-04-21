import 'package:flutter/material.dart';

class PixelShelfAppBar extends StatelessWidget {
  final String title;

  const PixelShelfAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.green.shade50,
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(
              context: context,
              delegate: CustomSearchDelegate(),
            );
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
          onPressed: () {},
        ),
      ],
    );
  }
}


// CustomSearchDelegate
class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}