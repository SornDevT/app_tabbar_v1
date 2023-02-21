import 'package:flutter/material.dart';

import 'page_1.dart';
import 'page_2.dart';
import 'page_3.dart';

class TabBarHome extends StatefulWidget {
  const TabBarHome({super.key});

  @override
  State<TabBarHome> createState() => _TabBarHomeState();
}

class _TabBarHomeState extends State<TabBarHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: const TabBar(
              // indicatorColor: Colors.red,
              // isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: 'ລົດຖີບ',
                ),
                Tab(
                  icon: Icon(Icons.directions_bus),
                  text: 'ລົດເມ',
                ),
                Tab(
                  icon: Icon(Icons.directions_boat),
                  text: 'ເຮືອນ',
                ),
              ]),
        ),
        body: const TabBarView(children: [
          page1(),
          page2(),
          page3(),
        ]),
      ),
    );
  }
}
