import 'package:bosszp/model/Appearance.dart';
import 'package:bosszp/ui/follow_list_widget.dart';
import 'package:bosszp/ui/message_list_widget.dart';
import 'package:bosszp/ui/posotion_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

  final List<(String, String, Widget)> pages = [
    ("zhiwei", "职位", PositionListWidget()),
    ("youle", "有了", Follow_List_Widget()),
    ("xiaoxi", "消息", MessageListWidget()),
    ("wode", "我的", Text("44"))
  ];

  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<Appearance>(
      create: (context) => Appearance(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("aaaa---"),
        ),
        body: TabBarView(
          controller: _tabController,
          children: pages.map((e) => e.$3).toList(),
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomBarWidget(
          tabController: _tabController,
          items: pages
              .map((e) => BottomNavigationBarItem(
                  icon: Image.asset(
                      width: 50,
                      height: 50,
                      "assets/images/webp/${e.$1}-dark.webp"),
                  label: "${e.$2}"))
              .toList(),
        ),
      ),
    );
  }
}
