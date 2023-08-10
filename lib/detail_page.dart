import 'package:flutter/material.dart';

import 'detail_widget.dart';

class DetailPage extends StatefulWidget {
  final int value;
  DetailPage({required this.value});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailWidget(widget.value),
    );
  }
}
