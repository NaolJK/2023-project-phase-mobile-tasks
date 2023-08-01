void createTasks(){
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