class Task{
  String? title;
  String? description;
  String? due_date;
  String? status;


  Task(String? title,  String? description, String? due_date){
    this.title = title;
    this.description = description;
    this.due_date = due_date;
    this.status = "pending";
  }

  void changeToPending(){
    this.status = "pending";
  }

  void changeToCompleted(){
    this.status = "completed";
  }
}