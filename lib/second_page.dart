import 'package:flutter/material.dart';

class SecondPae extends StatelessWidget {
  const SecondPae({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(height: 200),
        Container(
        height: 300,
        child: Text("I am second page"),),  

        OutlinedButton(
          child: Text("To Home Page"),
          onPressed: (){
            Navigator.pop(context);
          }
        )
      ],)   
    );
  }
}