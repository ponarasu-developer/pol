
import 'package:flutter/material.dart';
import 'package:myassignment/admissionform/Repots/reportsSubfiles/GenderReport.dart';
import './reportsSubfiles/overviewScree.dart';
import './reportsSubfiles/SchoolFile.dart';
import './reportsSubfiles/District.dart';
class ReportsScreen extends StatefulWidget {
  const ReportsScreen({Key? key}) : super(key: key);

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Report's"),
          centerTitle: true,
          bottom: const TabBar(
              splashFactory: NoSplash.splashFactory,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.amber,
              isScrollable: true,
              tabs: [
                Tab(
                text: "Overview"
                ),
                Tab(
                  text: "Gender",
                ),
                Tab(
                  text: "Caste",
                ),
                Tab(
                  text: "School",
                ),
                Tab(
                  text: "District",
                ),
                //Tab(text: "s",)
              ]),
        ),
        body:  const TabBarView(children: [
         OverviewScreen(),
          GenderReport(),
          Center(
            child: Text("3"),
          ),
          SchoolFiles(),
          DistrictPannel()
        ]),
      ),
    );
  }
}
