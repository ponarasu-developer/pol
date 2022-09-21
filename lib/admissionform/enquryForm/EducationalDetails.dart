// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EducationalDetails extends StatefulWidget {
  const EducationalDetails({Key? key}) : super(key: key);

  @override
  State<EducationalDetails> createState() => _EducationalDetailsState();
}

class _EducationalDetailsState extends State<EducationalDetails> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      children: [
        Text(
          "Educational Detail's",
          style: GoogleFonts.actor(fontSize: 26),
        ),
        const SizedBox(
          height: 30,
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
              labelText: "Register Number",
              hintText: "Latest Course Register number",
              icon: Icon(Icons.school)),
          showCursor: true,
          cursorColor: Colors.blue,
          keyboardType: TextInputType.text,
        ),
        const SizedBox(
          height: 30,
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
              labelText: "Board of Study",
              hintText: "",
              icon: Icon(Icons.book)),
          showCursor: true,
          cursorColor: Colors.blue,
          keyboardType: TextInputType.text,
        ),
        const SizedBox(
          height: 30,
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
              labelText: "School Name", hintText: "", icon: Icon(Icons.school)),
          showCursor: true,
          cursorColor: Colors.blue,
          keyboardType: TextInputType.text,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Marks Obtained",
          style: GoogleFonts.actor(fontSize: 16),
        ),
        TextFormField(
          onSaved: ((newValue) {}),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: ((value) {
            if (value!.isEmpty) {
              return "Please Enter the required information";
            }
            return null;
          }),
          textInputAction: TextInputAction.next,
          maxLength: 3,
          decoration: const InputDecoration(
              labelText: "Maths", hintText: "", icon: Icon(Icons.margin)),
          showCursor: true,
          cursorColor: Colors.blue,
          keyboardType: TextInputType.number,
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
          maxLength: 3,
          decoration: const InputDecoration(
              labelText: "Phycis", hintText: "", icon: Icon(Icons.margin)),
          showCursor: true,
          cursorColor: Colors.blue,
          keyboardType: TextInputType.number,
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
          maxLength: 3,
          decoration: const InputDecoration(
              labelText: "Chemistry", hintText: "", icon: Icon(Icons.margin)),
          showCursor: true,
          cursorColor: Colors.blue,
          keyboardType: TextInputType.number,
        ),
        Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 80,
              width: width / 2 - 36,
              // color:Colors.red,
              child: TextFormField(
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
                    label: Text("OverAll Total"),
                    icon: Icon(Icons.grade_outlined)),
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: ((value) {
                  if (value!.isEmpty) {
                    return "Please Enter the required information";
                  }
                  return null;
                }),
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                    label: Text("Cut Off"),
                    icon: Icon(Icons.account_tree_sharp)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
