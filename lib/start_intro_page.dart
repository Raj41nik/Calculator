import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Intro extends StatelessWidget {
  var namecontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('intro'),
        backgroundColor:  Color(0xffa6c1ee),
      ),
      body: Container(
        color: Color(0xffe6dee9),
        alignment: Alignment.center,
        child: Container(
          width:250,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Lets get started',style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold,color: Colors.orangeAccent),),
              SizedBox(height: 11,),
              SizedBox(height: 11,),
              TextField(
                controller: namecontroller,

              ),
              SizedBox(height: 11,),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> MyHomePage(namecontroller.text.toString()) //page k name
                      ,));
              }, child:Text('next',style: TextStyle(color: Colors.lightGreen),)),

            ],
          ),
        ),
      ),
    );
  }

}