// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:myassignment/admissionform/enquryForm/tenthStudentForm.dart';

import 'EducationalDetails.dart';

class AdmissionScreen extends StatefulWidget {
  const AdmissionScreen({Key? key}) : super(key: key);

  @override
  State<AdmissionScreen> createState() => _AdmissionScreenState();
}

class _AdmissionScreenState extends State<AdmissionScreen> {
  final formKey = GlobalKey<FormState>();

  int _value = 0;
  var size, height, width;
   TextEditingController dateofbirth = TextEditingController();
  @override
  // String dropdownValue = 'Male';
  Widget build(BuildContext context) {
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text("Enquiry Form"),
      ),
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
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Personal information",
                      style: GoogleFonts.actor(fontSize: 26),
                    ),
                    const Divider(
                      height: 6,
                      thickness: 0.6,
                    ),
                    TextFormField(
                      onSaved: ((newValue) {
                        // formvalues.Name = newValue;
                      }),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Enter the Name of the Student";
                        }
                        return null;
                      }),
                      decoration: const InputDecoration(
                          labelText: "Name",
                          //helperText: "Enter the Name",
                          hintText: "Enter the Name of the student",
                          //enabled: true,
                          //errorText: "Invalid Name"
                          icon: Icon(Icons.person)),
                      maxLength: 180,
                      showCursor: true,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      onSaved: ((newValue) {}),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Enter the Name Parent's/Guardian's";
                        }
                        return null;
                      }),
                      decoration: const InputDecoration(
                          labelText: "Parent's/Guardian's  Name:",
                          //helperText: "Enter the Name",
                          hintText:
                              "Enter the Name of the Parent's/Guardian's :",
                          //enabled: true,
                          //errorText: "Invalid Name"
                          icon: Icon(Icons.person_outline)),
                      maxLength: 180,
                      showCursor: true,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.name,
                    ),
                    TextFormField(
                      onSaved: ((newValue) {}),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Enter the Name Aadhar NUmber";
                        }
                        return null;
                      }),
                      maxLength: 12,
                      decoration: const InputDecoration(
                          labelText: "Aadhar Number",
                          hintText: "Enter the Aadhar  Number of the student",
                          icon: Icon(Icons.perm_contact_calendar_outlined)),
                      showCursor: true,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.next,
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "Enter the email";
                          }
                          return null;
                        }),
                        decoration: const InputDecoration(
                            labelText: "Email :",
                            //helperText: "Enter the Name",
                            hintText: "Enter the Email of the Students :",
                            //enabled: true,
                            //errorText: "Invalid Name"
                            icon: Icon(Icons.mail)),
                        //maxLength: 180,
                        showCursor: true,
                        cursorColor: Colors.blue,
                        cursorHeight: 3,
                        keyboardType: TextInputType.emailAddress),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 80,
                          width: width / 2 - 36,
                          // color:Colors.red,
                          child: TextFormField(
                            onSaved: ((newValue) {}),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.next,
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return "blood group";
                              }
                              return null;
                            }),
                            decoration: const InputDecoration(
                                label: Text("Blood Group"),
                                icon: Icon(Icons.bloodtype)),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        ///////////////////////////
                        SizedBox(
                          height: 80,
                          width: width / 2 - 36,
                          child: TextFormField(
                            controller: dateofbirth,
                              readOnly: true,
                            onTap: () async {
                              DateTime ?DOB =  await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1900), lastDate: DateTime(2100));

                             if (DOB != null) {
                      String str = DateFormat('dd-MM-yyyy').format(DOB);
                      setState(() {
                       dateofbirth.text = str;
                      });

                            }},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                          
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return "Enter the date of birth";
                              }
                              return null;
                            }),
                            
                            decoration: const InputDecoration(
                                label: Text("Date of Birth"),
                                 border: InputBorder.none,
                                icon: Icon(Icons.date_range)),
                          ),
                        )
                      ],
                    ),
                    TextFormField(
                      onSaved: ((newValue) {}),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "please Enter the phone number ";
                        }
                        return null;
                      }),
                      decoration: const InputDecoration(
                          labelText: "Phone Number",
                          hintText: "Enter the Phone Number of the student",
                          icon: Icon(Icons.phone)),
                      showCursor: true,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.number,
                    ),

                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      onSaved: ((newValue) {}),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Please Enter the required information";
                        }
                        return null;
                      }),
                      decoration: const InputDecoration(
                          labelText: "WhatsApp Number",
                          hintText: "Enter the WhatSApp Number of the student",
                          icon: Icon(Icons.whatsapp_outlined)),
                      showCursor: true,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 80,
                          width: width / 2 - 36,
                          // color:Colors.red,
                          child: TextFormField(
                            onSaved: ((newValue) {}),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.next,
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return "Please Enter the required information";
                              }
                              return null;
                            }),
                            decoration: const InputDecoration(
                                label: Text("Religion"),
                                icon: Icon(Icons.piano)),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          height: 80,
                          width: width / 2 - 36,
                          child: TextFormField(
                            onSaved: ((newValue) {}),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            textInputAction: TextInputAction.next,
                            validator: ((value) {
                              if (value!.isEmpty) {
                                return "Please Enter the required information";
                              }
                              return null;
                            }),
                            keyboardType: TextInputType.datetime,
                            decoration: const InputDecoration(
                                label: Text("Caste"),
                                icon: Icon(Icons.abc_outlined)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextFormField(
                      onSaved: ((newValue) {}),
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      textInputAction: TextInputAction.next,
                      validator: ((value) {
                        if (value!.isEmpty) {
                          return "Please Enter the required information";
                        }
                        return null;
                      }),
                      decoration: const InputDecoration(
                          labelText: "Parent's / Guardian's Phone Number",
                          hintText:
                              "Enter the Parent's / Guardian's  Phone Number",
                          icon: Icon(Icons.phone)),
                      //  maxLength: 180,
                      showCursor: true,
                      cursorColor: Colors.blue,
                      keyboardType: TextInputType.number,
                    ),

                    const SizedBox(
                      height: 60,
                    ),
                    //  Radio(value: 1, groupValue: _value, onChanged: (value) {}),

                    Row(
                      children: [
                        SizedBox(
                          height: 80,
                          child: Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = int.parse(value.toString());
                                });
                              }),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "10 th",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 80,
                          child: Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = int.parse(value.toString());
                                });
                              }),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "12 th",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),

                    /////////////////////////////////////////////////////////////////////////////////////////////////////////
                    //  const EducationalDetails(),
                    _value == 0
                        ? Container()
                        : _value == 1
                            ? const TenthClass()
                            : const EducationalDetails(),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);

                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                            if (formKey.currentState!.validate()) {
                              formKey.currentState?.save();
                            } else {}
                          },
                          child: const Text("Submit")),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
