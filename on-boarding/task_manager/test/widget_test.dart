import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_manager/feature/presentation/cover_screen.dart';
import 'package:task_manager/feature/presentation/create_screen.dart';
import 'package:task_manager/feature/presentation/todo_list.dart';
import 'package:mockito/mockito.dart';
import 'package:task_manager/main.dart';
import 'package:task_manager/data/models/Todo.dart';


class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: CoverPage(),
    ));
    expect(find.text('Get Started'), findsOneWidget);
  });

  testWidgets("Todo List View", (WidgetTester tester) async {
   
    await tester.pumpWidget(MyApp());

    await tester.tap(find.text("Get Started"));
    await tester.pumpAndSettle();

    expect(find.byType(TodoList), findsOneWidget);

    await tester.tap(find.text("Create task"));
    await tester.pumpAndSettle();

    expect(find.byType(CreateTodo), findsOneWidget);

    await tester.tap(find.byIcon(Icons.arrow_back_ios));
    await tester.pumpAndSettle();

    expect(find.byType(TodoList), findsOneWidget);
  });

  testWidgets("Create new todo item", (WidgetTester tester) async {
     List<Todo> todos = [
      Todo(task_name: "Test Task", description: "Test Description", due_date: "12-12-12",id: "testid1")
    ];

    await tester.pumpWidget(MaterialApp(
      home: TodoList(todos),
    ));

    expect(find.text("Test Task"), findsOneWidget);
    expect(find.text("12-12-12"), findsOneWidget);

  });


}
