// stateful Calculator App

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
      //title: 'title',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //  Our two Controllers
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var Result = " ";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text("Basic_calculation"),
        ),
        body: Container(
          color: Colors.blue.shade200,
          child: Center(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller:  no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(onPressed: (){
                          var no1= int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1+no2;

                          Result = "The sum of $no1 and $no2 is $sum:";

                          setState(() {

                          });
                        },
                            child: Text("Add")),

                        ElevatedButton(onPressed: (){

                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var diff = no1-no2;

                          Result = "subtraction of $no1 and $no2 is $diff : ";

                          setState(() {

                          });

                        },
                            child: Text("Sub")),

                        ElevatedButton(onPressed: (){

                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var mull = no1*no2;

                          setState(() {

                          });

                          Result = "multiplication of $no1 and $no2 is $mull";

                        },
                            child: Text("Mul")),

                        ElevatedButton(onPressed: (){

                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var div = no1/no2;

                          Result = "Divide of $no1 and $no2 is $div";

                          setState(() {

                          });

                        },
                            child: Text("Div")),
                      ],

                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(Result,style: TextStyle(fontSize: 25,
                        color: Colors.white, fontWeight: FontWeight.w500),),
                  ),
                ],

              ),
            ),

          ),
        )


    );
  }
}
