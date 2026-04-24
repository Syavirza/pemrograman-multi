import 'package:flutter/material.dart';

class CounterMod extends StatelessWidget {
  const CounterMod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterPage());
  }
}
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter and SetState'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter', style: TextStyle(fontSize: 23)),
            SizedBox(height: 10,),
            Text('$_counter', style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text('Add'),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.remove),
                      SizedBox(width: 5),
                      Text('Decrease'),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.refresh),
                      SizedBox(width: 5),
                      Text('Reset'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

