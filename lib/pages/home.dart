import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  bool _isToggled = false;
  String _inputText = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _toggleSwitch() {
    setState(() {
      _isToggled = !_isToggled;
    });
  }

  void _updateText(String text) {
    setState(() {
      _inputText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Counter: $_counter',
              style: TextStyle(fontSize: 24),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Increment Counter'),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  _isToggled ? 'Switch is ON' : 'Switch is OFF',
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  value: _isToggled,
                  onChanged: (value) {
                    _toggleSwitch();
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: _updateText,
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You typed: $_inputText',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
