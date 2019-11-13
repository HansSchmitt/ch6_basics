import 'package:flutter/material.dart';


class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({
    Key key
  }) : super(key:key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Column Cell 1'),
        Divider(),
        Text('Column Cell 2'),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Row 1 Inside Column 3'),
            Text('Row 2 Inside Column 3'),
          ],
        )
      ],
    );
  }
}