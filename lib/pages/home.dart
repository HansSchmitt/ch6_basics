import 'package:flutter/material.dart';
import 'package:ch6_basics/widgets/containerWithBoxDecorationWidget.dart';
import 'package:ch6_basics/widgets/columnWidget.dart';

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
                  height: 75.0,
                  width: double.infinity,
                  child: Center(
                    child: Text('Bottom App Bar'),
                  ),
                ),
                preferredSize: Size.fromHeight(75.0),
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
                  ],
                ),
              ),
            ),
      ),
    );
  }
}

