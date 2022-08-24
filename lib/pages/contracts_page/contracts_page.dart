import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/appBar/appBar.dart';

import '../../appBar/appBar.dart';

class ContractsPage extends StatefulWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  State<ContractsPage> createState() => _ContractsPageState();
}

class _ContractsPageState extends State<ContractsPage> {

  bool type=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('contracts'.tr(), true, Colors.black),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 148,
            color: const Color(0xff1E1E20),
          ),
          Container(
            margin: const EdgeInsets.only(top: 32, left: 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() => type = true);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: type?const Color(0xff00A795):Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding:  const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      child:  Text(
                        'contracts'.tr(),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: (){
                    setState(() => type = false);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:type? Colors.transparent:const Color(0xff00A795),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding:  const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      child:  Text(
                        'invoice'.tr(),
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 182),
          SvgPicture.asset(
            'assets/icons/document.svg',
            color: Colors.white.withOpacity(0.5),
            width: 66,
            height: 73,
          ),
          const SizedBox(height: 15),
          Text(
            'no_made'.tr(),
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
