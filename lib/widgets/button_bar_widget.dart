import 'package:flutter/material.dart';

class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.map),
            onPressed: null,
            disabledColor: Colors.lightGreen,
          ),
          IconButton(
            icon: Icon(Icons.airport_shuttle),
            onPressed: null,
          ),
          IconButton(
              icon: Icon(Icons.brush),
              onPressed: null,
              disabledColor: Colors.lightGreen)
        ],
      ),
    );
  }
}
