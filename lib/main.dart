import 'package:calculator/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var name;
  @override
  State<StatefulWidget> createState()=> MyHomeState(name);
  MyHomePage(this.name);
}
class MyHomeState extends State<MyHomePage>{
  var no1cont = TextEditingController();
  var no2cont = TextEditingController();
  var result ="";
  var nam;
  MyHomeState(this.nam);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Color(0xffa6c1ee),
      ),

      body:  Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [  //for giving color
                  Color(0xffffd1ff),
                  Color(0xfffad0c4)
                ],
                center: Alignment.topLeft//kaise lgyae
            )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome $nam',style: TextStyle(fontSize:34,color:Colors.orange),),
                Text('',style: TextStyle(fontSize: 40,color:Colors.white12),),
                TextField(
                  keyboardType: TextInputType.number,
                  controller:no1cont ,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2cont,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(onPressed: (){
                        var no1= int.parse(no1cont.text.toString());
                        var no2= int.parse(no2cont.text.toString());
                        var sum=no1+no2;
                        result ='the sum $no1 and $no2 is $sum';
                        setState(() {});
                      }, child: Text('Add',style: TextStyle(color: Colors.lightGreen))),
                      ElevatedButton(onPressed: (){
                        var no1= int.parse(no1cont.text.toString());
                        var no2= int.parse(no2cont.text.toString());
                        var sub=no1-no2;
                        result ='the diffrence of $no1 and $no2 is $sub';
                        setState(() {});
                      }, child: Text('Sub',style: TextStyle(color: Colors.lightGreen))),
                      ElevatedButton(onPressed: (){
                        var no1= int.parse(no1cont.text.toString());
                        var no2= int.parse(no2cont.text.toString());
                        var mul=no1*no2;
                        result ='the Multiplication of $no1 and $no2 is $mul';
                        setState(() {});
                      }, child: Text('Mul',style: TextStyle(color: Colors.lightGreen))),
                      ElevatedButton(onPressed: (){
                        var no1= int.parse(no1cont.text.toString());
                        var no2= int.parse(no2cont.text.toString());
                        var divi=no1/no2;
                        result ='the Division $no1 and $no2 is ${divi.toStringAsFixed(3)}';
                        setState(() {});
                      }, child: Text('Divi',style: TextStyle(color: Colors.lightGreen),))
                    ],
                  ),
                ),
                Padding(padding:EdgeInsets.all(25),child: Text(result,style:TextStyle(fontSize:25,color: Colors.black45),),)

              ],
            ),
          ),
        ),
      ),


    );
  }
}