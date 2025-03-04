// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:thai_hotline_app/view/about_ui.dart';
import 'package:thai_hotline_app/view/sub_a_home_ui.dart';
import 'package:thai_hotline_app/view/sub_b_home_ui.dart';
import 'package:thai_hotline_app/view/sub_c_home_ui.dart';
import 'package:thai_hotline_app/view/sub_d_home_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _selectedIndex = 0;

  List showUI = [
    SubAHomeUI(),
    SubBHomeUI(),
    SubCHomeUI(),
    SubDHomeUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.info_outline),
              iconSize: 27,
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUI(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: [
          SalomonBottomBarItem(
            selectedColor: Colors.blue,
            unselectedColor: Colors.grey,
            icon: Icon(FontAwesomeIcons.car),
            title: Text(
              'การเดินทาง',
              style: TextStyle(
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
                fontSize: 16,
              ),
            ),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.pink,
            icon: Icon(FontAwesomeIcons.heartPulse),
            title: Text(
              'อุบัติเหตุ-เหตุฉุกเฉิน',
              style: TextStyle(
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
                fontSize: 16,
              ),
            ),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.orange,
            icon: Icon(FontAwesomeIcons.bank),
            title: Text(
              'ธนาคาร',
              style: TextStyle(
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
                fontSize: 16,
              ),
            ),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.green,
            icon: Icon(FontAwesomeIcons.boltLightning),
            title: Text(
              'สาธารณูปโภค',
              style: TextStyle(
                fontFamily: GoogleFonts.notoSansThai().fontFamily,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: showUI[_selectedIndex],
    );
  }
}
