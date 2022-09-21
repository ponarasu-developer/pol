


import 'package:flutter/material.dart';

import 'package:myassignment/Dashboard/drawer.dart';
//import 'package:myassignment/admissionform/AdmissinScreen.dart';
//import 'package:myassignment/admissionform/AdmissionForm.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBoard'),
        backgroundColor: Colors.blueAccent,
        centerTitle:false,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),



      // ignore: prefer_const_constructors
      drawer: Drawerwidget(),
    );
  }
}
