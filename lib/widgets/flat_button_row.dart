import 'package:flutter/material.dart';

class FlatButtonRow extends StatelessWidget {
  const FlatButtonRow({
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FlatButton(
          onPressed: null,
          child: Text('Flag'),
        ),
        FlatButton(
          onPressed: null,
          child: Icon(Icons.flag,),
          color: Colors.lightGreen,
          disabledColor: Colors.lightGreen,
        )
      ],
    );
  }
}
