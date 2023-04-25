import 'dart:io';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

String file = 'Outliers.pdf';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Book List'),
        ),
        body: SfPdfViewer.file(
          File('/storage/emulated/0/Download/$file'),
        ),
      ),
    );
  }
}
