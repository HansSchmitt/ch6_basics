import 'package:flutter/material.dart';
import 'package:ch6_basics/pages/home.dart';

/*
Project folder structure:
Assets: Contains subfolders to organize data and files that will be shipped with the app, for example: images, fonts, data files, etc.
lib: Contains source code logic, including UI. It is subdivided into subfolders for better maintainability and organization.
lib\models: Holds classes of data that model things like customer information and inventory items.
lib\pages: Holds User Interface(UI) files, such as login, lists, charts, and settings pages.
lib\utils: Hols helper classes such as data conversion and calculations.
lib\widgets: Holds individual or composite widgets that will be displayed on UI files in the Lib\pages folder.
lib\services: Holds classes that help transceives data from services on the internet
 */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chapter 6 - Basics",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}


