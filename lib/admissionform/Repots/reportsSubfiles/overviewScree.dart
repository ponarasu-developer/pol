
import 'package:flutter/material.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //   const Spacer(),
        SizedBox(
          height: 30,
          width: MediaQuery.of(context).size.width,
        ),
        const Center(
          child: Text("Overview Report", style: TextStyle(fontSize: 20)),
        ),
        SizedBox(
          height: 30,
          width: MediaQuery.of(context).size.width,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .4,
              height: 130,
              color: Colors.lightBlueAccent,
              child:  Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:  [
                  Text("Total Enquiry",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                 Text("600")
                ],
               
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .4,
              height: 130,
              color: Colors.purpleAccent,
            )
          ],
        )
      ],
    );
  }
}
