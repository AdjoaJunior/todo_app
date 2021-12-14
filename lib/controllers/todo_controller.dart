// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:http/http.dart';
import 'package:todo_app/models/todo.dart';
import 'package:todo_app/services/todo_services.dart';


class TodoController {
  final TodoServices _todoServices = TodoServices();

  Future<Todo?> getAllTodos() async {
    Todo?  _todo;

    await _todoServices.getAllTodosResquest().then((response) {
      int statusCode = response.statusCode;
      if(statusCode == 200) {
        //success
        _todo = Todo.fromMap(json.decode(response.body));
      }
      else {
        //failed
        _todo = null;
      }
    }
    ).catchError((onError){
      _todo = null;
    });
    return _todo;
  }

  Future<bool>createTodo({
    required String title,
    required String description,
    required String dateTime }) 
    async {
     bool isSuccessful = false;
     await _todoServices.
     createTodoRequest(title: title, description: description, dateTime: dateTime)
     .then((response)  {
       int statusCode = response.statusCode;
       if (statusCode == 201) {
         //success
         isSuccessful = true;
       } else {
         //failure
         isSuccessful = false;
       }
     }).catchError((onError){
        isSuccessful = false;
     });
     return isSuccessful = false;
    }

       //delete Todo
       Future<bool>deleteTodo(String, id) async{
         bool isDeleted = false;
         await _todoServices.deleteTodoRequest(id).then((response) {
           int statusCode = response.statusCode;
           if (statusCode == 200) {
             //sucess
             isDeleted = true;
           } else {
             //failure
             isDeleted = false;
           }
         }).catchError((onError){
           isDeleted = false;
         });
         return isDeleted = false;
       }   
}

