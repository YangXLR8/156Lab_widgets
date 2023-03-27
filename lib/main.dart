import 'package:flutter/material.dart';

import 'ButtonsWid.dart';
import 'SelectWid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WIDGET EXCERCISE',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WIDGET EXCERCISE'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Text'),
            Tab(text: 'Image'),
            Tab(text: 'Buttons'),
            Tab(text: 'Selection'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // First tab - Text Widget
          const Center(
            child: Text(
              'Genshin Impact: 12 Things You Should Know About Zhongli\n',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          // Second tab - Image Widget
          Center(
            child: Image.asset(
              'images/zhongli.jpg',
            ),
          ),

          // Third tab - Different types of Button Widgets
          ButtonsWid(),

          // Fourth tab - Selection Widgets
          SelectWid(),
        ],
      ),
    );
  }
}
