import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) { 
  return Material(
    color: Colors.white,
        child:Column(
          children: [
            Image.asset('images/login.png',fit: BoxFit.cover,),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 22,
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
            ),
            TextFormField(
              obscureText: true,
                decoration: InputDecoration(hintText: "Enter password",labelText: "Password")
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: (){}, child: Text("Login"))
                  ],
                ),
              )
          ],
        ) ,
      );
  }
}