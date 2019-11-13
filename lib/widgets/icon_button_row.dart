import 'package:flutter/material.dart';

class IconButtonRow extends StatelessWidget {
  const IconButtonRow({
    Key key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          onPressed: null,
          icon: Icon(Icons.flight),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.flight),
          iconSize: 42.0,
          disabledColor: Colors.lightGreen,
          tooltip: 'Flight',
        )
      ],
    );
  }
}