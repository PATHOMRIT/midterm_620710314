import 'package:flutter/material.dart';
import 'dart:io';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PIG WEIGHT CALCULATOR',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _con = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PIG WEIGHT CALCULATOR'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 75.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Text('PIG WEIGHT',style:TextStyle(fontSize: 40.0, color: Colors.pink),),
                            Text('CALCULATOR',style:TextStyle(fontSize: 40.0, color: Colors.pink),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/pig.png',height: 130,),
                  ],
                ),
                ),
                SizedBox(
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Enter Length',
                    ),
                  ),
                  height: 100.0,
                  width: 300.0,
                ),
                SizedBox(
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _con,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Enter girth',
                    ),
                  ),
                  height: 100.0,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: SizedBox(
                    height: 65.0,
                    width: 150.0,
                    child: ElevatedButton(
                      child: Text('Calculate',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white)),
                      onPressed: () {
                        var input = _controller.text;
                        var input1 = _con.text;
                        var inputNumber = double.tryParse(input);
                        var inputNumber1 = double.tryParse(input1);
                        String error = 'Error';
                        String messageError = 'Invalid Input';
                        if (inputNumber == null || inputNumber1 == null) {
                          showDialog(
                              context: context,
                              builder: (
                                BuildContext contxet,
                              ) {
                                return AlertDialog(
                                  title: Text(error),
                                  content: Text(messageError),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Ok')),
                                  ],
                                );
                              });
                        }
                        else{
                          dynamic weigth = (inputNumber*0.01*inputNumber*0.01)*inputNumber1*0.01*69.3;
                          dynamic result = weigth * 112.50;
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

