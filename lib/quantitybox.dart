import "package:flutter/material.dart";

class quantitybox extends StatelessWidget {
  final String text;
  final bool isselected;
  const quantitybox({super.key, required this.text, required this.isselected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: isselected ? Colors.green : Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
