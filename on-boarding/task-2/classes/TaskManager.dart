import '../classes/Task.dart';


class TaskManager {

  var Tasks = [];


   String createTask(String? title, String? description, String? due_date){
    var new_task = Task(title, description,due_date);
    Tasks.add(new_task);
    return "Task Created Successfully";
  }

  void deleteTask(int task_id){
    if(task_id >= this.Tasks.length){
      print("No such task");
    }else{
     this.Tasks.removeAt(task_id);
    }
  }

  viewPendingTasks(){
    var pending = [];
    for(var p_tasks in this.Tasks){
      if(p_tasks.status == "pending"){
        pending.add(p_tasks.title);
      }
    }

    return pending;
  }

  viewCompletedTasks(){
    var pending = [];
    for(var p_tasks in this.Tasks){
      if(p_tasks.status == "completed"){
        pending.add(p_tasks.title);
      }
    }
    return pending;

  }

  String completeTask(int task_id){
    if(task_id >= this.Tasks.length){
      return "No Such Task";
    }
    this.Tasks[task_id].changeToCompleted();

    return "Added To Completed List";
  }

  String clearTaskManager(){
    this.Tasks = [];
    return "Task Manager Cleared";
  }

  void UpdateTask(int task_id, String? title, String? description , String? due_date){
    var new_task = Task(title, description,due_date);
    if(task_id >= this.Tasks.length){
      print("No such task");
    }else{
        this.Tasks[task_id] = new_task;
    print("Updated Succesfully");
    }
  
  }
}