import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class switches extends StatefulWidget {
  const switches({super.key});

  @override
  State<switches> createState() => _switchesState();
}

class _switchesState extends State<switches> {
  bool status = false;
  bool isswitchon = false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
        width: 47,
        height: 23,
        toggleSize: 30,
        value: status,
        borderRadius: 30,
        toggleColor: Colors.black12,
        toggleBorder: Border.all(
          color: Colors.white,
          width: 2.0,
        ),
        activeColor: Colors.green,
        inactiveColor: Colors.black38,
        onToggle: (val) {
          setState(() {
            status = val;
          });
        });
    // );
  }
}
