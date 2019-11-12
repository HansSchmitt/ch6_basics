import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text('Row 1'),
          Text('Row 2'),
          Text('Row 3'),
        ],
      ),
    );
  }
}
