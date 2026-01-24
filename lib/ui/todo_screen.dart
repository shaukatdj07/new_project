import 'package:bloc_app/bloc/todo/todo_bloc.dart';
import 'package:bloc_app/bloc/todo/todo_event.dart';
import 'package:bloc_app/bloc/todo/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Todo App')),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state.todoList.isEmpty) {
            return Center(child: Text('Items Not Found'));
          } else if (state.todoList.isNotEmpty) {
            return ListView.builder(
              itemCount: state.todoList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todoList[index]),
                  trailing: IconButton(
                    onPressed: () {
                      context.read<TodoBloc>().add(
                        DeleteEvent(task: state.todoList[index]),
                      );
                    },
                    icon: Icon(Icons.delete),
                  ),
                );
              },
            );
          } else {
            return SizedBox();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < 10; i++) {
            context.read<TodoBloc>().add(
              AddEvent(task: 'Task ' + i.toString()),
            );
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
