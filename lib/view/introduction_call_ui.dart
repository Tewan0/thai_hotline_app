// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:thai_hotline_app/view/home_ui.dart';
import 'package:thai_hotline_app/view/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/view/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/view/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/view/sub_d_introduction_call_ui.dart';

class IntroductionCallUI extends StatefulWidget {
  const IntroductionCallUI({super.key});

  @override
  State<IntroductionCallUI> createState() => _IntroductionCallUIState();
}

class _IntroductionCallUIState extends State<IntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: '',
          bodyWidget: SubAIntroductionCallUI(),
        ),
        PageViewModel(
          title: '',
          bodyWidget: SubBIntroductionCallUI(),
        ),
        PageViewModel(
          title: '',
          bodyWidget: SubCIntroductionCallUI(),
        ),
        PageViewModel(
          title: '',
          bodyWidget: SubDIntroductionCallUI(),
        ),
      ],
      dotsDecorator: DotsDecorator(
        activeSize: Size(15, 60),
        activeColor: Colors.purple[700],
        size: Size(15, 60),
      ),
      showDoneButton: true,
      showNextButton: true,
      showSkipButton: true,
      skip: Text(
        'ข้าม',
        style: TextStyle(
          color: Colors.purple,
          fontSize: 18,
        ),
      ),
      next: Text(
        '>',
        style: TextStyle(
          color: Colors.purple,
          fontSize: 25,
        ),
      ),
      done: Text(
        'เสร็จสิ้น',
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      onDone: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
      onSkip: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
  }
}
