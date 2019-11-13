import 'package:flutter/material.dart';

class RaisedButtonRow extends StatelessWidget {
  const RaisedButtonRow({
    Key key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        RaisedButton(
          onPressed: null,
          child: Text('Save'),
        ),
        RaisedButton(
          onPressed: null,
          child: Icon(Icons.save,),
          color: Colors.lightGreen,
          disabledColor: Colors.lightGreen,
        )
      ],
    );
  }
}