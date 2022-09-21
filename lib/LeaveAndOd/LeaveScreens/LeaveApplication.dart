// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myassignment/LeaveAndOd/Data/leaveData.dart';
import 'package:intl/intl.dart';

const List<String> list = <String>[
  'Select the type of leave',
  'Sick Leave',
  'Casual Leave',
  'Function',
  'Tour'
];

class LeaveAppy extends StatefulWidget {
  const LeaveAppy({Key? key}) : super(key: key);

  @override
  State<LeaveAppy> createState() => _LeaveAppyState();
}

class _LeaveAppyState extends State<LeaveAppy> {
  final _reason = TextEditingController();
  late String _typeofLeave = list.first;
  TextEditingController dateInput = TextEditingController();
  TextEditingController startingDate = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    startingDate.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      }),
      child: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Radio(value: hello, groupValue: groupValue, onChanged: onChanged)
              Center(
                child: DropdownButton(
                    value: _typeofLeave,
                    elevation: 10,
                    isExpanded: true,
                  //  focusColor: Colors.amber,
                    //    hint:   Text("Select the Type of Leave"),
                    items: list.map<DropdownMenuItem<String>>((String values) {
                      return DropdownMenuItem<String>(
                          value: values, child: Text(values,style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold
                          ),));
                    }).toList(),
                    onChanged: (String? valueinpu) {
                      setState(() {
                        _typeofLeave = valueinpu.toString();
                      });
                    }),
              ),
              TextField(
                controller: startingDate,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.date_range_outlined),
                  labelText: "Starting Date",
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? startdate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100));
                  if (startdate != null) {
                    String str = DateFormat('dd-MM-yyyy').format(startdate);
                    setState(() {
                      startingDate.text = str;
                    });
                  }
                },
              ),
              const Divider(
                color: Colors.black,
                height: 2,
              ),
              TextField(
                controller: dateInput,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.date_range_outlined),
                    labelText: "Ending Date"),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2001),
                      lastDate: DateTime(2100));
                  if (pickedDate != null) {
                    // print(pickedDate);
                    String formattedDate =
                        DateFormat('dd-MM-yyyy').format(pickedDate);
                    setState(() {
                      dateInput.text = formattedDate;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Reason ",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  //color: Colors.black,

                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset(0, 0))
                  ],
                ),
                child: TextFormField(
                  controller: _reason,
                  maxLines: 4,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "      Reason for Leave ",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      LeavePageData leavedata = LeavePageData(
                          typeOfLeave: _typeofLeave,
                          startingDate: startingDate.text,
                          reason: _reason.text,
                          endingDate: dateInput.text);
                     // print(leavedata.typeOfLeave);
                    },
                    child: const Text("Submit")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
