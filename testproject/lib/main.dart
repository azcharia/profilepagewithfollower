import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: follower(),
    );
  }
}

class follower extends StatefulWidget {
  const follower({super.key});

  @override
  _followerState createState() => _followerState();
}

class _followerState extends State<follower> {
  int _followers = 0;

  void _incrementFollowers() {
    setState(() {
      _followers++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('follower'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'followers: $_followers',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _incrementFollowers,
              child: const Text('Follow'),
            ),
          ],
        ),
      ),
    );
  }
}