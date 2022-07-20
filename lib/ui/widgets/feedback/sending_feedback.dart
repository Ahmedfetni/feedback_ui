import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendingFeedback extends StatefulWidget {
  SendingFeedback({Key? key}) : super(key: key);

  @override
  State<SendingFeedback> createState() => _SendingFeedbackState();
}

class _SendingFeedbackState extends State<SendingFeedback> {
  String feedbackText = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
          ),
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.025),
          height: MediaQuery.of(context).size.height * 0.25,
          child: SvgPicture.asset(
              fit: BoxFit.fitHeight, 'assets/images/Feedback-amico.svg'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Center(
            child: Text(
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
                "Help us improve"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Center(
            child: Text(
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                ),
                "Please select a topic below and let us know about your concern"),
          ),
        ),

        //DropdownButtonFormField(items: items, onChanged: onChanged)
        Padding(
          padding: const EdgeInsets.all(16),
          child: InputDecorator(
            decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(40, 155, 191, 220),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12))),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  hint: Text(
                    style: TextStyle(
                      fontFamily: "Poppins",
                    ),
                    "Select an topic",
                  ),
                  items: <String>[
                    'MCTF',
                    'AGC',
                    'MC Hackathon',
                    'other event'
                  ] //static data
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    //TODO lofic of selecting a topic
                  }),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            textInputAction: TextInputAction.newline,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            minLines: 4,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(
                    color: Color.fromARGB(
                        255, 115, 191, 220), //rgba(115, 191, 220, 1)
                  )),
              hintText: "i think this event was",
            ),
            onChanged: (value) {
              setState(() {
                feedbackText = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
