import 'package:flutter/material.dart';
import 'package:task_manager/feature/presentation/cover_screen.dart';
import 'package:task_manager/feature/presentation/todo_list.dart';
import 'package:task_manager/feature/presentation/create_screen.dart';
import 'package:task_manager/feature/presentation/details_screen.dart';

import 'models/Todo.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext){

    final List<Todo> _todos = <Todo>[];

    _handleAddTodo(String? id, String? task_name, String? description, String? due_date){
      setState(() {
        _todos.add(Todo(id: id, task_name: task_name, description: description, due_date: due_date));
      });
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => CoverPage(),
        '/create':(context) => CreateTodo(_handleAddTodo),
        '/details':(context) => ViewDetails(),
        '/all':(context) => TodoList(todos: _todos,)
      },
    );
  }
}

