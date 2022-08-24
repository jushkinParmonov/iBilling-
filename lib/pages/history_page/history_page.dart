import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/appBar/appBar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('history'.tr(), true, const Color(0xff141416)),
      backgroundColor: Colors.black,
      body: const Center(child: Text('History'),),
    );
  }
}
