import 'package:flutter/material.dart';
import 'package:task_manager/widgets/nav_widget.dart';
import 'package:task_manager/widgets/view_widget.dart';

import '../../data/models/Todo.dart';


class ViewDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final data = ModalRoute.of(context)!.settings.arguments as Todo;
    String? title = data.task_name;
    String? description = data.description;
    String? due_date = data.due_date;
    return MaterialApp(
      title: "View details",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: NavWidget("Task Detail")
                ),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  //Image Container
                  Container(
                    child: Image.asset("assets/shopping_list.png"),
                  ),

                  Column(
                    children: [
                      ViewList("Title", "$title"),
                      ViewList("Description", "$description"),
                      ViewList("Deadline", "$due_date")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}