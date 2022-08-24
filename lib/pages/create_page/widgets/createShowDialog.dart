import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget createPageDialog(BuildContext context, PageController pageController){
  return AlertDialog(
    title:  Center(
      child: Text(
        '${'contract_or_invoice'.tr()}?',
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    ),
    backgroundColor: const Color(0xff2A2A2D),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            pageController.animateToPage(
              5,
              duration: const Duration(milliseconds: 100),
              curve: Curves.linear,
            );
          },
          child: containerInDialog('assets/icons/contract.svg','contract_singular'.tr()),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
            pageController.animateToPage(
              6,
              duration: const Duration(milliseconds: 100),
              curve: Curves.linear,
            );
          },
          child: containerInDialog('assets/icons/invoice.svg','invoice'.tr()),
        ),
      ],
    ),
  );
}


Widget containerInDialog(String imagePath, String name) {
  return Container(
    height: 46,
    decoration: BoxDecoration(
      color: const Color(0xff4E4E4E),
      borderRadius: BorderRadius.circular(3),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, top: 12, bottom: 12),
      child: Row(
        children: [
          SvgPicture.asset(imagePath),
          const SizedBox(width: 16),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}