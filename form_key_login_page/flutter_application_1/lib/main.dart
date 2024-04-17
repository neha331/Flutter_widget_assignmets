import 'package:flutter/material.dart';
import 'package:flutter_application_1/user_model.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Login page',
      debugShowCheckedModeBanner :false,
      home:LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  State<LoginPage> createState()=> _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  
  TextEditingController userNameTextEditingController =TextEditingController();
  TextEditingController passwordTextEditingController =TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  String _userlogin() {
  String username = userNameTextEditingController.text;
  String password = passwordTextEditingController.text;

  bool isUserFound = false;
  String name= '';
  for (var user in userList) {
    if (user.username == username && user.password == password) {
      isUserFound = true;
      name = user.username;
      break;
    }
  }
  return name;
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:const  Text('Login Page'),
        centerTitle:true,
      ),
      body:Padding(
        padding: EdgeInsets.all(10),
        child:Form(
          key: _formkey,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height:20),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8FTIXNqJUQ611EW4WWqU6xXUgdPaXapkFZvsZREZNikPvHF79rESB9EH0P2M2jsIzEqo&usqp=CAU",
                width:100,
                height:100,
              ),
              const SizedBox(height:20),
              TextFormField(
                controller: userNameTextEditingController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  label:const Text('enter username'),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.person),
                ),
                //key:userNameKey,//validate key shodhat yeto 
                validator: (value) {
                  print("Please Enter Username");
                  if(value== null || value.isEmpty){
                    return "please Enter username";
                  }else if (value == _userlogin()){
                    return null;
                  }else{
                    return 'username not exist';
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height:20),
              TextFormField(
                controller: passwordTextEditingController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Password',
                  label:const Text('enter Password'),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                ),
                validator: (value) {
                  print("Please Enter Password");
                  if(value== null || value.isEmpty){
                    return "please Enter Password";
                  }else if(value == userList[0].password){
                    return null;
                  }else{
                    return 'Wrong password';
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height:20),
              ElevatedButton(
                style:const ButtonStyle(
                  backgroundColor:MaterialStatePropertyAll(Colors.amber),
                ),
                onPressed: (){
                bool loginValidated= _formkey.currentState!.validate();
                if(loginValidated){
                  ScaffoldMessenger.of(context).showSnackBar(
                    
                    const SnackBar(content: Text("login Successful"),)
                  ); 
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    
                    const SnackBar(content: Text("login failed"),)
                  );
                }
              },
               child: const Text('login'),
              ),
            ],
          )
        ),
      ),
    );
  }

}
