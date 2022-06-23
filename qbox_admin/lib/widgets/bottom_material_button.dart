import 'package:flutter/material.dart';

class BottomMaterialButton extends StatefulWidget {
  final String text;
  final Widget? popUpChild;
  final List<Widget>? popUpactions;
  const BottomMaterialButton(
      {Key? key, required this.text, this.popUpChild, this.popUpactions})
      : super(key: key);

  @override
  State<BottomMaterialButton> createState() => _BottomMaterialButtonState();
}

class _BottomMaterialButtonState extends State<BottomMaterialButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amberAccent,
      elevation: 4,
      type: MaterialType.button,
      child: MaterialButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: AlertDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.text),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            icon: const Icon(Icons.close_rounded))
                      ],
                    ),
                    contentPadding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * (2 / 153.6)),
                    content: SizedBox(
                      width: MediaQuery.of(context).size.width * (700 / 1563),
                      child: widget.popUpChild,
                    ),
                    actions: widget.popUpactions,
                  ),
                );
              });
        },
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 76.8),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width / 64,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
