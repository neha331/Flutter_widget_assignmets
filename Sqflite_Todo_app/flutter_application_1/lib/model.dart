class ToDoModelClass {
  String title;
  String description;
  String date;
  //bool isChecked; 


   ToDoModelClass({
     required this.title,
     required this.description,
     required this.date, 
    // this.isChecked = false,  
  });

  Map<String, dynamic> toDoMap(){
    return{
      'title':title,
      'description':description,
      'date':date,
     // 'isChecked':isChecked
    };
  }

}