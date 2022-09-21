//import 'dart:html';

// ignore_for_file: unrelated_type_equality_checks, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class loginScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var hidepassword = true;
  final formKey = GlobalKey<FormState>();

  String value = "";

  final _username = TextEditingController();
  // ignore: non_constant_identifier_names
  String Username = "a";
  final _password = TextEditingController();
  // ignore: non_constant_identifier_names
  String Password = "a";

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context);
    return Scaffold(
        body: GestureDetector(
      onTap: (() {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      }),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: (deviceSize.size.height -
                        MediaQuery.of(context).padding.top) *
                    0.4,
                child: Stack(
                  children: [
                    Positioned(
                      child: LayoutBuilder(
                        builder: (ctx, constraints) {
                          return Container(
                            height: constraints.maxHeight,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/logo.png'))),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: deviceSize.size.height * 0.05,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 10,
                                offset: Offset(0, 5))
                          ]),
                      child: Column(children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.grey))),
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.next,
                            controller: _username,
                            decoration: const InputDecoration(
                              //  border: InputBorder.none,
                              hintText: "username",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                            validator: (value) {
                              if (value!.isEmpty
                                  //  ||  !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                                  ) {
                                return "Enter Correct Username";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              textInputAction: TextInputAction.done,
                              controller: _password,
                              obscureText: hidepassword,
                              decoration: InputDecoration(
                                  //  border: InputBorder.none,
                                  hintText: "password",
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  suffixIcon: InkWell(
                                    child: hidepassword ?const  Icon(Icons.visibility_rounded) :const Icon(Icons.visibility_off_rounded),
                                    onTap: () {
                                      setState(() {
                                        hidepassword = !hidepassword;
                                      });
                                    },
                                  )),
                              validator: (value) {
                                if (value!.isEmpty && _password != Password) {
                                  return "Enter Correct Password";
                                } else {
                                  return null;
                                }
                              }),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: deviceSize.size.height * 0.03,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.login),
                        label: const Text(
                          "ForgetPassword?",
                          style: TextStyle(color: Colors.black),
                        )),
                    SizedBox(
                      height: deviceSize.size.height * 0.03,
                    ),
                    Container(
                      //height: deviceSize.size.height*0.2,
                      margin: const EdgeInsets.symmetric(horizontal: 140),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.indigo[800]),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              if (formKey.currentState!.validate()) {
                                if (_username.text == Username &&
                                    _password.text == Password) {
                                  



                                          Navigator.pushNamed(context,'/DashBoard');
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (_) =>
                                          const CupertinoAlertDialog(
                                            title: Text("Alert..!"),
                                            content: Text(
                                                "Entred UserName or Password is incorrect"),
                                          ));
                                }
                              }
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 4, bottom: 4),
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
