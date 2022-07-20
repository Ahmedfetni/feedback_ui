// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/feedback/sending_feedback.dart';
import '../widgets/feedback/feedback_is_sent.dart';

class FeedbackPage extends StatefulWidget {
  // need some argeuments like a profile
  FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  chnageIndex() {
    if (index == 0) {
      setState(() {
        index = 1;
      });
    }
  }

  int index = 0;
  List<Widget> li = [
    SendingFeedback(),
    FeedbackIsSent(),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonList = [
      Padding(
        padding: EdgeInsets.only(left: 12, right: 12, bottom: 8),
        child: ElevatedButton(
          onPressed: () {
            chnageIndex();
          },
          child: Text(
            "send",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 16,
            ),
          ),
        ),
      ),
      Center(
        //padding: EdgeInsets.only(left: 12, right: 12, bottom: 8),
        child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("Return to home"),
                Icon(Icons.arrow_right_alt_sharp),
              ],
            )),
      ),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          leadingWidth: 0,
          //titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                ),
                label: const Text(""),
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(40, 155, 191, 220),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14))),
              ),
              //TextButton(onPressed:() => Navigator.pop(context), child: child)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    "feedback"),
              ),
              const CircleAvatar(
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),

          // ignore: prefer_const_literals_to_create_immutables

          //the const need to go when we add some data
        ),
        body: ListView(
          children: [
            li[index],
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            buttonList[index]
          ],
        ));
  }
}
