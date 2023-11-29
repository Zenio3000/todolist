import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _Database = Hive.box('Database');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Title1","Description1", false],
      ["Title2","Description2", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _Database.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _Database.put("TODOLIST", toDoList);
  }
}
