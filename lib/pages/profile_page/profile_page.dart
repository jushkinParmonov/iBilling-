import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/pages/profile_page/widgets/all_buttons.dart';
import 'package:untitled5/pages/profile_page/widgets/all_svg_icons.dart';
import 'package:untitled5/pages/profile_page/widgets/information_text.dart';
import 'package:untitled5/pages/profile_page/widgets/user_information.dart';

import '../../appBar/appBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('profile'.tr(), false, const Color(0xff141416)),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const UserInformation(),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const LanguageDialog(),
              );
            },
            child: Container(
              width: double.maxFinite,
              height: 48,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xff2A2A2D),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    languageText('lang'.tr()),
                    flagSvg('flag'.tr()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



