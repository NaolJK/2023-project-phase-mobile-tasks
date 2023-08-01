import 'dart:io';
import './classes/TaskManager.dart';

void main(){
  String? ch;
  var TaskManagerObject = TaskManager();

  print("Task Manager");
  while(ch != "8"){
    menu();

    ch = stdin.readLineSync();

    switch(ch){
      case "1":{
        print("Creating Tasks");

        String? title;
        String? description;
        String? due_date;

        print("Enter the title"); 
        title = stdin.readLineSync();
        print("Enter The Description");
        description = stdin.readLineSync();
        print("Enter the due date");
        due_date = stdin.readLineSync();

        if(title == "" || description == "" || due_date == ""){
          print("All inputs are required");
        }else{
          String message = TaskManagerObject.createTask(title, description, due_date);
          print(message);
        }
      }
      break;

      case "2":{
        print("Updating Tasks");
       

        String? title;
        String? description;
        String? due_date;

        print("Enter the title"); 
        title = stdin.readLineSync();
        print("Enter The Description");
        description = stdin.readLineSync();
        print("Enter the due date");
        due_date = stdin.readLineSync();

        print("Enter Task Number");
        var id = stdin.readLineSync();
        var pos = int.parse(id ?? '0');

        if(title == "" || description == "" || due_date == ""){
          print("All inputs are required");
        }else{
          TaskManagerObject.UpdateTask(pos,title, description, due_date);
        }

      }
      break;

      case "3":{
        var pending = TaskManagerObject.viewPendingTasks();
        int i = 1;
        for(var pending_t in pending){
          print("$i. $pending_t");
          ++i;
        }
      }
      break;

      case "4":{
        var completed = TaskManagerObject.viewPendingTasks();
        int i = 1;
        for(var comp in completed){
          print("$i. $comp");
          ++i;
        }
      }
      break;

      case "5":{
        print("Enter Task Number");
        var id = stdin.readLineSync();
        var pos = int.parse(id ?? '0');
        TaskManagerObject.deleteTask(pos);
      }
      break;

      case "6": {
        print("Clearing Tasks");
        String message = TaskManagerObject.clearTaskManager();
        print(message);
      }
      break;
      case "7":{
         print("Enter Task Number");
        var id = stdin.readLineSync();
        var pos = int.parse(id ?? '0');
        String message = TaskManagerObject.completeTask(pos);
        print(message);
      }
      break;
      case "8":{
       print("Quitting");
      }
      break;
      default:{
        print("No such option");
      }
      break;
    }
  }
  
}


void menu(){

  print("================================");
  print("1. Create Task"); 
  print("2. Update Task");
  print("3. View Pending Task");
  print("4. View Completed Tasks");
  print("5. Delete Task");
  print("6. Clear Task"); 
  print("7. Complete Task");
  print("8, Quit");

  print("===============================");
}
