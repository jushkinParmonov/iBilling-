import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled5/pages/contracts_page/contracts_page.dart';
import 'package:untitled5/pages/create_page/adding_contract.dart';
import 'package:untitled5/pages/create_page/adding_invoice.dart';
import 'package:untitled5/pages/create_page/widgets/createShowDialog.dart';
import 'package:untitled5/pages/history_page/history_page.dart';
import 'package:untitled5/pages/profile_page/profile_page.dart';
import 'package:untitled5/pages/saved_page/saved_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  int button = 0;
  PageController? pageController;
  late BuildContext ctx;
  List<Widget> pages = [
    const ContractsPage(),
    const HistoryPage(),
    Container(),
    const SavedPage(),
    const ProfilePage(),
    const AddingContract(),
    const AddingInvoice(),
  ];

  void onTap(int index) {
    setState(() => currentIndex = index);
    if (index == 2) {
      showDialog(
        context: context,
        builder: (ctx) => createPageDialog(context, pageController!),
      );
    } else {
      pageController?.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 1),
        curve: Curves.linear,
      );
    }
  }

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics:const NeverScrollableScrollPhysics(),
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: Colors.black.withOpacity(0.8),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color(0xffA6A6A6),
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/document.svg'),
            label: 'contracts'.tr(),
            activeIcon: SvgPicture.asset(
              'assets/icons/document.svg',
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/history.svg'),
            label: 'history'.tr(),
            activeIcon: SvgPicture.asset(
              'assets/icons/history.svg',
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/plus.svg'),
            label: 'nev'.tr(),
            activeIcon: SvgPicture.asset(
              'assets/icons/plus.svg',
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bookmark.svg'),
            label: 'saved'.tr(),
            activeIcon: SvgPicture.asset(
              'assets/icons/bookmark.svg',
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/profile.svg'),
            label: 'profile'.tr(),
            activeIcon: SvgPicture.asset(
              'assets/icons/profile.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
