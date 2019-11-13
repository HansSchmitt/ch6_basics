import 'package:flutter/material.dart';
import 'package:ch6_basics/widgets/container_with_box_decoration_widget.dart';
import 'package:ch6_basics/widgets/column_widget.dart';
import 'package:ch6_basics/widgets/row_widget.dart';
import 'package:ch6_basics/widgets/column_and_row_nesting_widget.dart';
import 'package:ch6_basics/widgets/flat_button_row.dart';
import 'package:ch6_basics/widgets/raised_button_row.dart';
import 'package:ch6_basics/widgets/icon_button_row.dart';
import 'package:ch6_basics/widgets/popup_menu_button_widget.dart';
import 'package:ch6_basics/widgets/button_bar_widget.dart';

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
                  Icons.photo_camera, size: 75.0, color: Colors.white70,
                ),
              ),
              bottom: PopUpMenuButtonWidget(),
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
                    Divider(),
                    const IconButtonRow(),
                    Divider(),
                    const ButtonBarWidget(),
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



