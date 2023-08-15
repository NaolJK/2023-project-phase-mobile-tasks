class Todo{
  String? id;
  String? task_name;
  String? due_date;
  String? description;
  bool iscompleted;

  Todo({
    this.id,
    this.task_name,
    this.description,
    this.due_date,
    this.iscompleted=false
  });


}