import 'package:flutter/material.dart';
import 'package:ch6_basics/widgets/containerWithBoxDecorationWidget.dart';
import 'package:ch6_basics/widgets/columnWidget.dart';
import 'package:ch6_basics/widgets/rowWidget.dart';
import 'package:ch6_basics/widgets/columnAndRowNestingWidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            appBar: AppBar(
              title: Text('Chapter 6 - Basics',overflow: TextOverflow.fade),
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: (){},
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.ac_unit),
                  onPressed: (){},
                )
              ],
              flexibleSpace: SafeArea(
                child: Icon(
                  Icons.photo_camera, size: 75.0, color: Colors.white70
                  ,
                ),
              ),
              bottom: PreferredSize(
                child: Container(
                  color: Colors.lightGreen.shade100,
                  height: 25.0,
                  width: double.infinity,
                  child: Center(
                    child: Text('Bottom App Bar'),
                  ),
                ),
                preferredSize: Size.fromHeight(25.0),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const ContainerWithBoxDecorationWidget(),
                    Divider(),
                    const ColumnWidget(),
                    Divider(),
                    const RowWidget(),
                    Divider(),
                    const ColumnAndRowNestingWidget(),
                    Divider(),
                    const FlatButtonRow(),
                    Divider(),
                    const RaisedButtonRow(),
                  ],
                ),
              ),
            ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.airplay),
          backgroundColor: Colors.lightGreen.shade100,
        ),
      ),
    );
  }
}

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







