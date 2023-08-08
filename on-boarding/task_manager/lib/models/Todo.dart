class Todo{
  String? id;
  String? task_name;
  String? due_date;
  String? description;

  Todo({
    this.id,
    this.task_name,
    this.description,
    this.due_date
  });

//  Todo copyWith({
//   String? id,
//   String? task_name,
//   String? due_date, 
//   String? description
//  }){
//   return Todo(
//     id:id ?? this.id,
//     task_name: task_name ?? this.task_name,
//     due_date: due_date ?? this.due_date,
//     description: description ?? this.description
//   );
//  }

//  @override
//  List<Object?> get props => [
//   id,
//   task_name,
//   due_date, 
//   description
//  ];

//  static List<Todo> todos = [
//   Todo(
//     id: '1', 
//     task_name: "Test one", 
//     due_date: "12-12-2023",
//     description: "Test one"

//   )
//  ];

}