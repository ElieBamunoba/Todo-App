import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:todo_app_v2/features/data/source/files_memeory.dart';
import 'package:todo_app_v2/features/domain/model/todo.dart';

import '../../domain/model/todos.dart';
import '../../domain/repository/todos.dart';

class TodosRepositoryImpl extends TodosRepository {
  TodosRepositoryImpl({required this.files});
  final FilesMemory files;
  late final String _path = 'todos.json';
  @override
  Future<void> addNewTodo(Todo todo) async {
    final todos = await fetchTodos();
    final newTodos = todos.values..add(todo);
    await files.write(_path, jsonEncode(Todos(values: newTodos).toJson()));
  }

  @override
  Future<void> deleteAllTodos() {
    //delete files by path
    return files.delete(_path);
  }

  @override
  Future<void> deleteTodoById(String id) async {
    final todos = await fetchTodos();
    final newTodos = todos.values.where((todo) => todo.id != id).toList();
    await files.write(_path, jsonEncode(Todos(values: newTodos).toJson()));
  }

  @override
  Future<Todo?> fetchTodoById(String id) async {
    final todos = await fetchTodos();
    return todos.values.firstWhereOrNull((todo) => todo.id == id);
  }

  @override
  Future<Todos> fetchTodos() async {
    final content = await files.read(_path);
    if (content == null) return const Todos(values: []);
    return Todos.fromJson(jsonDecode(content));
  }

  @override
  Future<void> updateTodoById(String id, Todo todo) async {
    final todos = await fetchTodos();
    final newTodos = todos.values.map((e) {
      if (e.id == id) return todo;
      return e;
    }).toList();
    await files.write(_path, jsonEncode(Todos(values: newTodos).toJson()));
  }
}
