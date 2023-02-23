import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'todo.dart';
import 'home.dart';



class ToDoItem extends StatelessWidget {

  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('List Tile clicked');
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: todo.isDone ? checkedBoxIcon() : emptyBoxIcon(),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 15,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: deleteItemIcon(),
      ),
    );
  }


  Widget emptyBoxIcon() {
    return Container(
      child: FaIcon(
        FontAwesomeIcons.square,
        size: 20,
        color: Color(0xFF5F52EE),
      ),
    );
  }


  Widget checkedBoxIcon() {
    return Container(
      child: FaIcon(
        FontAwesomeIcons.solidSquareCheck,
        size: 20,
        color: Color(0xFF5F52EE),
      ),
    );
  }

  Widget emptyStarIcon(){
    return IconButton(
        onPressed: (){
          print('Item starred!');
        },
        icon: FaIcon(
          FontAwesomeIcons.star,
          size: 20,
          color: Colors.amberAccent,
        ),
    );
  }

  Widget starredIcon(){
    return IconButton(
      onPressed: (){
        print('Item unstarred!');
      },
      icon: FaIcon(
        FontAwesomeIcons.starAndCrescent,
        size: 20,
        color: Colors.amberAccent,
      ),
    );
  }

  Widget deleteItemIcon() {
    return IconButton(
      icon: FaIcon(
        FontAwesomeIcons.trash,
        size: 20,
        color: Color(0xFFDA4040),
      ),
      onPressed: () {
        print('clicked on delete icon');
        onDeleteItem(todo.id);
      },

    );
  }

}

