import 'package:flutter/material.dart';
import 'package:task_manager/widgets/nav_widget.dart';
import 'package:task_manager/widgets/view_widget.dart';


class ViewDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context){
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
                      ViewList("Title", "UI/UX App Design"),
                      ViewList("Description", "First I have to animate the logo and prototyping my design. It\'s very important."),
                      ViewList("Deadline", "April. 29, 2023")
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