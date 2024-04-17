

class ToDoModelClass {
  String title;
  String description;
  String date;
  bool isChecked; 


   ToDoModelClass({
     required this.title,
     required this.description,
     required this.date, 
    this.isChecked = false,  
  });
}