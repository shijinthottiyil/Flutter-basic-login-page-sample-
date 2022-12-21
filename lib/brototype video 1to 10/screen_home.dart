import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Shijin"),
        centerTitle: true,
      ),

      body: Center(
        child: Text(_counter.toString()),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _counter++;
        });

      },child: Icon(Icons.add) ,),
      
    );
  }
}