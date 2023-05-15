import 'package:flutter/material.dart';
import 'package:todo_app/screens/add_note_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateToAddTodo,
        label: const Text(
          '+',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 247, 3),
        foregroundColor: Colors.black,
      ),
    );
  }

  void navigateToAddTodo() {
    final route =
        MaterialPageRoute(builder: (context) => const AddTodoScreen());
    Navigator.push(context, route);
  }
}
