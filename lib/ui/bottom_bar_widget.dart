import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

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
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded), label: "QR"),
            BottomNavigationBarItem(
                icon: Icon(Icons.baby_changing_station), label: "aa"),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_business_rounded), label: "cc")
          ],
        );
      }),
    );
  }
}
