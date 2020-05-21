import 'package:flutter/material.dart';

class Fortune extends StatelessWidget {
  final String _text;

  Fortune(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        _text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
