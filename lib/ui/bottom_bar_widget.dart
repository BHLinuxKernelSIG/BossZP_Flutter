import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  const BottomBarWidget(
      {super.key, required TabController tabController, required this.items})
      : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(splashColor: Colors.transparent),
      child: StatefulBuilder(builder: (context, setState) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _tabController.animateTo(index);
            });
          },
          currentIndex: _tabController.index,
          selectedItemColor: Color(0xFF35A7A9),
          unselectedItemColor: Color(0XFF909090),
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: items,
        );
      }),
    );
  }
}
