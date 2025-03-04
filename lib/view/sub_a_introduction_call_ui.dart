// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:thai_hotline_app/view/home_ui.dart';
import 'package:thai_hotline_app/view/sub_a_home_ui.dart';

class SubAIntroductionCallUI extends StatefulWidget {
  const SubAIntroductionCallUI({super.key});

  @override
  State<SubAIntroductionCallUI> createState() => _SubAIntroductionCallUIState();
}

class _SubAIntroductionCallUIState extends State<SubAIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[50],
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/travel.jpeg'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              textAlign: TextAlign.center,
              '\nเมื่อต้องเดินทางทั้งในเมือง ออกต่างจังหวัด\nจะใกล้หรือไกลเพียงใด\nสอบถามข้อมูลการเดินทาง การจราจร\nทางด่วน ทางหลัก ทางรอง\nเส้นทางเลี่ยงการจราจรติดขัด\nข้มูลรถทัวร์ รถไฟ ขสมก. BTS MRT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ชักช้าอยู่ใย ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'โทรเลย!!!',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              textAlign: TextAlign.center,
              'สายด่วน\nการเดินทาง',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
