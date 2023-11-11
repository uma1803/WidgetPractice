import 'package:flutter/material.dart';
import 'package:widgets_practice/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless and Stateful Widget'),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GreetingWidget(greetingMessage: 'Hello!'),
            GreetingWidget(greetingMessage: 'Welcome to the Flutter!'),
            GreetingWidget(greetingMessage: 'Have you learned the widgets'),
            SizedBox(height: 20),
          Padding(padding: EdgeInsets.all(8.0),
          child: IncremWidget(),
    )
          ],
        ),
      ),
    );
  }
}







class IncremWidget extends StatefulWidget {
  const IncremWidget({Key? key}) : super(key: key);

  @override
  _IncremWidgetState createState() => _IncremWidgetState();
}

class _IncremWidgetState extends State<IncremWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Counter: $_counter',
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.amberAccent),
        ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Yes'),
        ),
      ],
    );
  }
}