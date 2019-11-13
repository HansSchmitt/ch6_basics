import 'package:flutter/material.dart';

class ContainerWithBoxDecorationWidget extends StatelessWidget{
  const ContainerWithBoxDecorationWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(50.0),
            ),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.lightGreen.shade500,
                  Colors.lightBlue,
                  Colors.amber,
                ]
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20.0,
                offset: Offset(0.0 , 10.0),
              )
            ],
          ),
          child: Center(
            child: RichText(
                text: TextSpan(
                    text: 'FlutterWorld',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.purple,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purpleAccent,
                      decorationStyle: TextDecorationStyle.dotted,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' for',
                      ),
                      TextSpan(
                        text: ' Mobile',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]
                )
            ),
          ),
        ),
      ],
    );
  }
}
