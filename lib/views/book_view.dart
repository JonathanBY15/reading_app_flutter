import 'dart:io';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfListView extends StatelessWidget {
  const PdfListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Directory downloadDirectory = Directory('/storage/emulated/0/Download');
    if (!downloadDirectory.existsSync()) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('PDF List'),
        ),
        body: const Center(
          child: Text('Download directory not found.'),
        ),
      );
    }

    final List<FileSystemEntity> files = downloadDirectory.listSync();

    List<File> pdfFiles = [];
    for (FileSystemEntity file in files) {
      if (file.path.endsWith('.pdf')) {
        pdfFiles.add(File(file.path));
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF List'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: pdfFiles.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 170,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PdfViewerPage(pdfFile: pdfFiles[index]),
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
                const SizedBox(width: 5),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PdfViewerPage(pdfFile: pdfFiles[index]),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                          child: ListTile(
                            tileColor: Colors.green.shade50,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                            title: Text(
                              pdfFiles[index].path.split('/').last,
                              style: const TextStyle(fontSize: 18),
                            ),
                            subtitle: Text(
                              pdfFiles[index].lastModifiedSync().toString(),
                              style: const TextStyle(fontSize: 14),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color.fromARGB(255, 30, 109, 47),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 85,
                          child: ListTile(
                            tileColor: Colors.green.shade50,
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
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
      ),
    );
  }
}

class PdfViewerPage extends StatelessWidget {
  final File pdfFile;

  const PdfViewerPage({Key? key, required this.pdfFile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pdfFile.path.split('/').last),
      ),
      body: SfPdfViewer.file(pdfFile),
    );
  }
}
