import 'package:flutter/material.dart';
import 'package:orientation_example/detail_page.dart';
import 'package:orientation_example/list_widget.dart';

class MasterDetailPage extends StatefulWidget {
  const MasterDetailPage({super.key});

  @override
  State<MasterDetailPage> createState() => _MasterDetailPageState();
}

class _MasterDetailPageState extends State<MasterDetailPage> {
  var isLargeScreen = false;
  var selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (MediaQuery.of(context).size.width > 600) {
            isLargeScreen = true;
          } else {
            isLargeScreen = false;
          }
          return Row(
            children: [
              Expanded(
                child: ListWidget(
                  count: 10,
                  onItemSelected: (value) {
                    if (isLargeScreen) {
                      selectedValue = value;
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(
                            value: value,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ),
              isLargeScreen
                  ? Expanded(child: DetailPage(value: selectedValue))
                  : const SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
