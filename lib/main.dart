import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Raphael App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Container(

          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  )
                ],
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.cyan,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.pinkAccent,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 50,
                    height: 50,
                  )
                ],
              ),
              Container(
                  color: Colors.amber,
                  height: 30,
                  width: 300,
                  child: Text(
                    'Diamante amarelo',
                    style: TextStyle(color: Colors.black, fontSize: 28),
                    textAlign: TextAlign.center,
                  )),
              ElevatedButton(
                  onPressed: () {
                    print("você apertou o botão");
                  },
                  child: Text('Aperte o botão!')
              )
            ],
          ),
        ));
  }
}
