import 'package:bosszp/ui/posotion_list_widget.dart';
import 'package:flutter/material.dart';

import 'ui/bottom_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final _tabController = TabController(length: pages.length, vsync: this);

  final List<Widget> pages = [
    PositionListWidget(),
    Text("12"),
    Text("13"),
    Text("44")
  ];
  final List<BottomNavigationBarItem> bottomBars = [
    BottomNavigationBarItem(icon: Icon(Icons.face_2_outlined), label: "职位"),
    BottomNavigationBarItem(icon: Icon(Icons.ac_unit_rounded), label: "有了"),
    BottomNavigationBarItem(
        icon: Icon(Icons.baby_changing_station_outlined), label: "消息"),
    BottomNavigationBarItem(icon: Icon(Icons.cabin_outlined), label: "我的")
  ];

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aaaa---"),
      ),
      body: TabBarView(
        controller: _tabController,
        children: pages,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomBarWidget(
        tabController: _tabController,
        items: bottomBars,
      ),
    );
  }
}
