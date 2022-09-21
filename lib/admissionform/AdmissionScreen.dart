// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:myassignment/admissionform/enquryForm/EducationalDetails.dart';

import 'Repots/reportsScreen.dart';

class Admissionpage extends StatefulWidget {
  const Admissionpage({Key? key}) : super(key: key);

  @override
  State<Admissionpage> createState() => _AdmissionpageState();
}

class _AdmissionpageState extends State<Admissionpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Admission"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const AdmissionScreen()));
                   //     Navigator.pushNamed(context, '/EnquiryForm');
                   Navigator.pushNamed(context,  '/EnquiryForm');

              },
              child: Card(
                  elevation: 6,
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: const [
                         
                        Icon(
                          Icons.format_align_center,
                          size: 70,
                          color: Colors.blue,
                        ),
                        Text(
                          "Enquiry",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),

            /// reports

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReportsScreen()));

                        Navigator.pushNamed(context, '/ReportScreen');
              },
              child: Card(
                  elevation: 6,
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.add_comment_rounded,
                          size: 70,
                          color: Colors.blue,
                        ),
                        Text(
                          "Report's",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
     
    );
  }
}
