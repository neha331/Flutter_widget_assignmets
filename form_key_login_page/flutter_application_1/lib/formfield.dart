
import 'package:flutter/material.dart';

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

  @override
  State<LoginPage> createState()=> _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController userNameTextEditingController =TextEditingController();
  TextEditingController passwordTextEditingController =TextEditingController();

  GlobalKey<FormFieldState> userNameKey= GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey= GlobalKey<FormFieldState>();

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:const  Text('login Page'),
      ),
      body:Padding(
        padding: EdgeInsets.all(10),
        child:Column(
            children: [
              TextFormField(
                controller: userNameTextEditingController,
                key:userNameKey,//validate key shodhat yeto 
                validator: (value) {
                  print("Please Enter Username");
                  if(value== null || value.isEmpty){
                    return "please Enter username";
                  }else{
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
              ElevatedButton(onPressed: (){
                
                bool usernameValidated = userNameKey.currentState!.validate();
                 
                if(usernameValidated  /* && passwor*/){
                  ScaffoldMessenger.of(context).showSnackBar(
                    
                    const SnackBar(content: Text("login Successful"),)
                  ); 
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    
                    const SnackBar(content: Text("login failed"),)
                  );
                }

                // bool loginValidated= _formkey.currentState!.validate(); 
                // if(loginValidated  /* && passwor*/){
                //   ScaffoldMessenger.of(context).showSnackBar(
                    
                //     const SnackBar(content: Text("login Successful"),)
                //   ); 
                // }else{
                //   ScaffoldMessenger.of(context).showSnackBar(
                    
                //     const SnackBar(content: Text("login failed"),)
                //   );
                // }
              },
               child: const Text('login'),
              ),
            ],
          )
        ),
      );
    
  }

}