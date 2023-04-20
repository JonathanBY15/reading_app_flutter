import 'package:flutter/material.dart';
import 'package:reading_app_flutter/views/shelf_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        
      ),
      home: const ShelfView(),
    );
  }
}
