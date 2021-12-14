import 'dart:convert';

import 'package:http/http.dart';


class TodoServices{

  //get all Todos
  Future<Response>getAllTodosResquest() async {
    return await get(Uri.parse('https://pure-plains-69417.herokuapp.com/todos'));
  }
  
  //create Todo
  Future<Response> createTodoRequest({
    required String title,
    required String description,
    required String dateTime }) async{ 
       Map<String, String> header = {'Content-Type': 'application/json'};
       Map<String, String> body = {
         "title":"title",
         "description":"description",
         "date_time":"dateTime",
         
       };

       return await post(Uri.parse('https://pure-plains-69417.herokuapp.com/todos'),
       body: jsonEncode(body),
       headers: header);
}
 //update a Todo
 Future<Response> updateTodoRequest({required bool status,required String id})async {
   Map<String, bool> body = {'Status':status};
   Map<String, String> header = {'Content-Type': 'application/json'};


   return await patch(Uri.parse('https://pure-plains-69417.herokuapp.com/todos/$id'));
 }
 //delete Todo
 Future<Response> deleteTodoRequest(String id) async {
   return await
    delete(Uri.parse('https://pure-plains-69417.herokuapp.com/todos$id'));
 }
}