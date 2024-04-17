class UserModel {
  String username;
  String password;

   UserModel({
    required this.username,
    required this.password,
  }  
  );
}

List<UserModel>  userList = [
  UserModel(username: 'neha', password: 'neha123'),
  UserModel(username:'nikita', password:'nikita123'),
];