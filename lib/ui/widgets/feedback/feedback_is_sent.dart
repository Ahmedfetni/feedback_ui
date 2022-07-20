import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeedbackIsSent extends StatelessWidget {
  const FeedbackIsSent({Key? key}) : super(key: key);

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
              fit: BoxFit.fitHeight, 'assets/images/thanku.svg'),
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
                "Thank you"),
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
                "Thank you for sharing yur thoughts. We appreciate your Feedback!"),
          ),
        ),
      ],
    );
  }
}
