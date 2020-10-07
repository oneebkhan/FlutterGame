import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  //this is to enable changing the hint text in the text field
  TextLogin({this.hinttext});

  final String hinttext;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 22,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: new InputDecoration.collapsed(
                hintText: hinttext,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
