import 'package:flutter/material.dart';
import 'Patientdisplay.dart';

class Chatscreen extends StatefulWidget {
  @override
  _ChatscreenState createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {




  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFCF6F5),
      child: Patientdisplay(),
    );
  }
}
