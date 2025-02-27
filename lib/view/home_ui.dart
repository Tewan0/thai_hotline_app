// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:thai_hotline_app/view/about_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
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
        onTap: (value) {},
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.wallet_travel_outlined),
            title: Text(
              'การเดินทาง',
              style:
                  TextStyle(fontFamily: GoogleFonts.notoSansThai().fontFamily),
            ),
          ),
        ],
      ),
    );
  }
}
