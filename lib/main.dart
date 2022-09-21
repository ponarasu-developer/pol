import 'package:flutter/material.dart';
import './loginScrren/loginScreen.dart';
import 'Dashboard/DashBoard.dart';
//import 'Dashboard/drawer.dart';
import 'admissionform/AdmissionScreen.dart';
import 'admissionform/Repots/reportsScreen.dart';
import 'FeedBack/Feedbackpage.dart';
import 'admissionform/enquryForm/enquryform.dart';
import 'LeaveAndOd/LeavePage.dart';
void main(List<String> args) {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      initialRoute : '/'
      ,
      routes: {
        '/': (context) =>  loginScreen(),
        '/DashBoard' : (context) => DashBoard(),
        '/EnquiryForm' : (context) => const AdmissionScreen(),
        '/AdmissionPage' : (context) => const  Admissionpage(),
     '/ReportScreen' :(context) => const ReportsScreen(),
     '/FeedBackScreen' : (context) => const FeedBackPage(),
     '/LeavePage' :(context) =>  const LeavePage() 
      },
      debugShowCheckedModeBanner: false,
     // home: loginScreen(),
      

    );
  }
}
