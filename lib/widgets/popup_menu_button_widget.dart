import 'package:flutter/material.dart';
import 'package:ch6_basics/models/todo_menu_item.dart';

List<TodoMenuItem> foodMenuList = [
  TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
  TodoMenuItem(title: 'Remind Me', icon: Icon(Icons.add_alarm)),
  TodoMenuItem(title: 'Flight', icon: Icon(Icons.flight)),
  TodoMenuItem(title: 'Music', icon: Icon(Icons.audiotrack)),
];

class PopUpMenuButtonWidget extends StatelessWidget implements PreferredSize{
  const PopUpMenuButtonWidget({
    Key key
  }): super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(35.0);

  @override
  Widget get child=> Container();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: PopupMenuButton<TodoMenuItem>(
        icon: Icon(Icons.view_list),
        onSelected: ((valueSelected){
          print('value selected: ${valueSelected.title}');
        }),
        itemBuilder: (BuildContext context){
          return foodMenuList.map((TodoMenuItem todoMenuItem){
            return PopupMenuItem<TodoMenuItem>(
              value: todoMenuItem,
              child: Row(
                children: <Widget>[
                  Icon(todoMenuItem.icon.icon),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(todoMenuItem.title),
                ],
              ),
            );
          }).toList();
        },
      ),
    );
  }
}