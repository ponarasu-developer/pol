import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myassignment/FeedBack/overviewScreen.dart';



class FeedBackPage extends StatefulWidget {
  const FeedBackPage({Key? key}) : super(key: key);

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("FEEDBACK", style: GoogleFonts.acme(color: Colors.white)),
          centerTitle: true,
          bottom: const TabBar(
              // indicator: Decoration.lerp(a, b, t),
              splashFactory: NoSplash.splashFactory,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.amber,
              //    labelColor: Colors.green,
              unselectedLabelColor: Colors.white,
              unselectedLabelStyle: TextStyle(fontSize: 25, color: Colors.blue),
              tabs: [
                Text(
                  "Overview",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Review",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
        ),
        body: const TabBarView(
          
          children: [
        NewFeedBackScreen(),
          Center(
            child: Text("data"),
          )
        ]),
      ),
    );
  }
}
