import 'package:flutter/material.dart';
import 'package:myassignment/FeedBack/Data/feedbackdata.dart';
bool newFeedback = false;
List<String> options = [
  'Choose the options',
  'option 1',
  'option2',
  'option3',
  'option 4'
];

class NewFeedBackScreen extends StatefulWidget {
  const NewFeedBackScreen({Key? key}) : super(key: key);

  @override
  State<NewFeedBackScreen> createState() => _NewFeedBackScreenState();
}

class _NewFeedBackScreenState extends State<NewFeedBackScreen> {
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
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    newFeedback = true;
                  });
                },
                child: const Text("FeedBack"),
              ),
              newFeedback == true ? const FeedBackForm() : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedBackForm extends StatefulWidget {
  const FeedBackForm({Key? key}) : super(key: key);

  @override
  State<FeedBackForm> createState() => _FeedBackFormState();
}

class _FeedBackFormState extends State<FeedBackForm> {
  String _catagory = options.first;
  String _person = options.first;
   final _feedBack = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        child: Container(
            padding: const EdgeInsets.all(16),
            child: Form(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  DropdownButton(
                      value: _catagory,
                      isExpanded: true,
                      items: options.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? valueinpu) {
                        setState(() {
                          _catagory = valueinpu.toString();
                        });
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButton(
                      value: _person,
                      isExpanded: true,
                      hint: const Text("Person's"),
                      items: options.map((values) {
                        return DropdownMenuItem(
                            value: values, child: Text(values));
                      }).toList(),
                      onChanged: (String? input) {
                        setState(() {
                          _person = input.toString();
                        });
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 5,
                    controller: _feedBack,
                    decoration:
                        const InputDecoration(labelText: "Share your Feedback"),
                    //   initialValue: "Share your feed back",
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    
                      
                      ElevatedButton(
                          onPressed: () {
FeedbackData feedDate = FeedbackData(catagory: _catagory,reportingPerson: _person,feedBack:_feedBack.text );

                          }, child: const Text("submit")),
                    ],
                  )
                ],
              ),
            ))),
      ),
    );
  }
}
