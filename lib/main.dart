import 'package:flutter/material.dart';
import 'package:orientation_example/master_detail_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'OrientationBuilder demo';
    return const MaterialApp(
      title: appTitle,
      home: MasterDetailPage(),
    );
  }
}

class OrientationList extends StatelessWidget {
  const OrientationList({
    super.key,
    required this.title,
  });
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(
              100,
              (index) {
                return Center(
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
