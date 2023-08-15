import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:task_manager/feature/presentation/create_screen.dart';
import 'package:task_manager/widgets/todo_card.dart';
import 'package:task_manager/widgets/nav_widget.dart';

import '../../data/models/Todo.dart';


class TodoList extends StatefulWidget{

  

  TodoList(this.todos);

  // final Function addTodo;
  final List<Todo> todos;

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  Widget build(BuildContext context){

    
    List<Widget> lists = [];
    
    // void change(object){
    //   setState(() {
    //     object.iscompleted = !object.iscompleted;
    //   });
    // }

    for(Todo todo in this.widget.todos){
      // List <String?> data = [todo.task_name,todo.description, todo.due_date];
      lists.add(InkWell(onTap: (){
        Navigator.pushNamed(
          context,
          "/details",
          arguments:todo);
      }, child: TodoCard(name: todo.task_name, date: todo.due_date,iscompleted: todo.iscompleted,)));
    }
    return Scaffold(
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Todo List",
        home: SafeArea(
    
          child: Scaffold(
    
            backgroundColor: Colors.white,
    
    
            body: Center(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
    
                children: [
                  NavWidget("Todo-list"),
                  
                  Center(child: Image.asset('assets/todolist.png')),
    
                  Container(
                    margin: EdgeInsets.only(left: 25, bottom:8),
                    child: Text("Todo List", style: TextStyle(
                      fontWeight: FontWeight.w700
        
                    ),),
                  ),
    
                  Container(
                    height: 300,
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListView(
                      physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.all(5),
                      children: lists,
                    ),
                  ),
    
                  Center(
                    child: Container(
                      // margin: EdgeInsets.only(bottom: 10),
                      child: Center(
                        child: FloatingActionButton.extended(
                          onPressed: (){
                            Navigator.of(context).pushNamed("/create");
                          },
                          label:Text("Create task",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                          ),),
                          backgroundColor: Color.fromRGBO(238, 111, 87, 1),
                          extendedPadding: EdgeInsets.only(left: 72, right: 72, top: 7,bottom: 7),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}