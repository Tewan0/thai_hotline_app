// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:thai_hotline_app/components/components.dart';
import 'package:thai_hotline_app/data/bank.dart';
import 'package:thai_hotline_app/data/emergency.dart';
import 'package:thai_hotline_app/data/utility.dart';

import 'package:url_launcher/url_launcher.dart';

class SubDHomeUI extends StatefulWidget {
  const SubDHomeUI({super.key});

  @override
  State<SubDHomeUI> createState() => _SubDHomeUIState();
}

class _SubDHomeUIState extends State<SubDHomeUI> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    var hotLineWidgets = utilityList.map((item) => Column(
          children: [
            ContactCard(
              image: item.imagePath,
              title: item.title,
              tel: item.tel,
            ),
            SizedBox(height: 10)
          ],
        ));

    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Text(
                textAlign: TextAlign.center,
                'สายด่วน\nสาธารณูปโภค',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/utility.png',
                  height: 200,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ...hotLineWidgets,
            ],
          ),
        ),
      ),
    );
  }
}
