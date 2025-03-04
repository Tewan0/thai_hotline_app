// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SubCIntroductionCallUI extends StatefulWidget {
  const SubCIntroductionCallUI({super.key});

  @override
  State<SubCIntroductionCallUI> createState() => _SubCIntroductionCallUIState();
}

class _SubCIntroductionCallUIState extends State<SubCIntroductionCallUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[50],
      child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/bank.png'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              textAlign: TextAlign.center,
              '\nเมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต\nกิน เที่ยว ซื้อสินค้า \nการเดินทาง การรักษาพยาบาล\nหรือโดนเหตุมิจฉาชีพ \nแก๊งคอลเซ็นเตอร์หลอกลวง\nสามารถติดต่อธนาคารโดยตรง',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ได้เลย ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'โทรเลย!!!',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            Text(
              textAlign: TextAlign.center,
              'สายด่วน\nธนาคาร',
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
