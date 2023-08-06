import 'package:flutter/material.dart';
import 'package:task_manager/feature/presentation/cover_screen.dart';
import 'package:task_manager/feature/presentation/todo_list.dart';
import 'package:task_manager/feature/presentation/create_screen.dart';
import 'package:task_manager/feature/presentation/details_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => CoverPage(),
        '/create':(context) => CreateTodo(),
        '/details':(context) => ViewDetails(),
        '/all':(context) => TodoList()
      },
    );
  }
}

