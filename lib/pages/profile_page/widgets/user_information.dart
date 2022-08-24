import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/pages/profile_page/widgets/all_svg_icons.dart';
import 'package:untitled5/pages/profile_page/widgets/information_text.dart';
import 'package:easy_localization/easy_localization.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 188,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xff2A2A2D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                personIcon(),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    profileUsername(),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        jobDescription('profession'.tr()),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        jobDescription('IQ Education'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 25),
            informationText('date_of_birth'.tr(), '16.09.2001'),
            informationText('phone_number'.tr(), '+998977210688'),
            informationText('E-mail', 'predatorhunter041@gmail.com'),
          ],
        ),
      ),
    );
  }
}
