import 'package:flutter/material.dart';

import 'ui/bottom_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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

  final List<Widget> pages = [Text("11"), Text("12"), Text("13")];
  final List<BottomNavigationBarItem> bottomBars = [
    BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded), label: "QR1"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded), label: "QR2"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite_rounded), label: "QR3")
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
      body: TabBarView(controller: _tabController, children: pages),
      bottomNavigationBar: BottomBarWidget(
        tabController: _tabController,
        items: bottomBars,
      ),
    );
  }
}
