import 'package:flutter/material.dart';

import 'LeaveScreens/LeaveApplication.dart';

class LeavePage extends StatefulWidget {
  const LeavePage({Key? key}) : super(key: key);

  @override
  State<LeavePage> createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Leave & OD"),
          centerTitle: true,
          bottom: const TabBar(
              splashFactory: NoSplash.splashFactory,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.amber,
              //  isScrollable: true,
              tabs: [
                Tab(
                  text: "Apply Leave",
                ),
                Tab(
                  text: "History",
                ),
                Tab(
                  text: "Requests",
                )
              ]),
        ),
        body: const TabBarView(children: [
          LeaveAppy(),
          Center(
            child: Text("1"),
          ),
          Center(
            child: Text("1"),
          ),
        ]),
      ),
    );
  }
}
