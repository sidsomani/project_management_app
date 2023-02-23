import 'package:flutter/material.dart';

class ToDo{
  String? id;
  String? todoText;
  bool isDone;
  bool isStarred;


  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
    this.isStarred = false,
  });

  static List<ToDo> todoList(){
    return [

    ];

  }

}