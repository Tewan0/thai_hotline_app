// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ContactCard extends StatefulWidget {
  String? image;
  String? title;
  String? tel;
  ContactCard({super.key, this.image, this.title, this.tel});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          widget.image != ""
              ? Image.asset(
                  widget.image!,
                  width: 50,
                )
              : Container(),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              '${widget.title!}\n${widget.tel!}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              _makePhoneCall(widget.tel!.replaceAll(" ", ""));
            },
            icon: Icon(Icons.phone_outlined),
          )
        ],
      ),
    );
  }
}
