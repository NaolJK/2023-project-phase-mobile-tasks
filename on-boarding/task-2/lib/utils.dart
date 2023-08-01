import 'dart:io';
import '../classes/TaskManager.dart';
import './functions.dart';

void start(){
  var TaskManagerObject = TaskManager();
  String? ch;

  while(ch != "8"){
    menu();

    ch = stdin.readLineSync();

    switch(ch){
      case "1":{
        createTask(TaskManagerObject);
      }
      break;

      case "2":{
        UpdateTask(TaskManagerObject);
      }
      break;

      case "3":{
        viewPendingTasks(TaskManagerObject);
      }
      break;

      case "4":{
        viewCompletedTasks(TaskManagerObject);
      }
      break;

      case "5":{
        deleteTask(TaskManagerObject);
      }
      break;

      case "6": {
        clearTask(TaskManagerObject);
      }
      break;
      case "7":{
         completeTask(TaskManagerObject);
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

