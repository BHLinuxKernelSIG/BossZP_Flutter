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
          onTap: (index) {
            setState(() {
              _tabController.animateTo(index);
            });
          },
          currentIndex: _tabController.index,
          selectedItemColor: Colors.red[900],
          items: items,
        );
      }),
    );
  }
}
