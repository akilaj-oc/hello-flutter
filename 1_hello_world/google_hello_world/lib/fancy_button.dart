import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  FancyButton({@required this.onPressed, @required this.labelButton});

  final GestureTapCallback onPressed;
  final String labelButton;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.orange,
      child: Container(
        // margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // RotatedBox(
              //   quarterTurns: 1,
              //   child: Icon(
              //     Icons.explore,
              //     color: Colors.amber,
              //   ),
              // ),
              // SizedBox(width: 8),
              Text(
                labelButton,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
