import 'package:flutter/material.dart';
import 'package:flutteruiecom/utils/routes.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;

  @override
  Widget build(BuildContext context) { 
  return Material(
    color: Colors.white,
        child:SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/login.png',fit: BoxFit.cover,),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                      height: 20.0,
              ),
              TextFormField(
                  decoration: InputDecoration(hintText: "Enter Username",labelText: "Username"),
                  onChanged: (value){
                    name=value;
                    setState(() {
                      
                    });
                  },
              ),
              TextFormField(
                obscureText: true,
                  decoration: InputDecoration(hintText: "Enter password",labelText: "Password")
              ),
              SizedBox(
                height: 40.0,
              ),
              Material(
                color: Colors.deepPurple,
                 borderRadius: BorderRadius.circular(changeButton? 50:8),
                child: InkWell(
                  onTap: ()async{
                    setState(() {
                      changeButton=true;
                    });
                    await Future.delayed(Duration(seconds:1));
                    await Navigator.pushNamed(context, MyRoutes.homeRoute);
                    setState(() {
                      changeButton=false;
                      
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton? 50:150,
                    height:40,
                    
                    alignment: Alignment.center,
                    
                    child: changeButton?Icon(Icons.done,color: Colors.white,)
                    :Text("Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    ),
                  ),
                ),
              )
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //    child: Text("Login"),
              //    style: TextButton.styleFrom(minimumSize: Size(120,40)),
              //    )
                    ],
                  ),
                )
            ],
          ),
        ) ,
      );
  }
}