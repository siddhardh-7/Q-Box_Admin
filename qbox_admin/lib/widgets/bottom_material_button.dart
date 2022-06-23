import 'package:flutter/material.dart';

class BottomMaterialButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const BottomMaterialButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amberAccent,
      elevation: 4,
      type: MaterialType.button,
      child: MaterialButton(
        onPressed: onPressed(),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 76.8),
        child: Text(
          text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 64,
          ),
        ),
      ),
    );
  }
}
