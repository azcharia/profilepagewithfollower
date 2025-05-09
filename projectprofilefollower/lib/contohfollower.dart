import 'package:flutter/material.dart';

class Contohfollower extends StatefulWidget {
  const Contohfollower({super.key});

  @override
  State<Contohfollower> createState() => _ContohfollowerState();
}

class _ContohfollowerState extends State<Contohfollower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Text("follower"),
        ElevatedButton(onPressed: () {
          
        },child: Text("follow"),),
        
      ],
    ),);

  }
}