import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final String buttonText;
  final Function onNextText;

  TextControl({this.buttonText, this.onNextText});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(buttonText),
      onPressed: onNextText,
    );
  }
}
