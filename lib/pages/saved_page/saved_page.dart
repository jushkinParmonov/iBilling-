import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../appBar/appBar.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar('saved'.tr(), true, const Color(0xff141416)),
      backgroundColor: Colors.black,
      body: Center(child: Text('saved'.tr()),),
    );
  }
}
