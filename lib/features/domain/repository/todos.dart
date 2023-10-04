import '../model/todo.dart';
import '../model/todos.dart';

abstract class TodosRepository {
  Future<Todos> fetchTodos();
  Future<Todo?> fetchTodoById(String id);
  Future<void> addNewTodo(Todo todo);
  Future<void> updateTodoById(String id, Todo todo);
  Future<void> deleteTodoById(String id);
  Future<void> deleteAllTodos();
}
