import 'package:flutter/material.dart';

class InsightsPage extends StatefulWidget {
  const InsightsPage({super.key});

  @override
  _InsightsPageState createState() => _InsightsPageState();
}

class _InsightsPageState extends State<InsightsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Insights Page"),
          centerTitle: true,
        ),
        body: Center(
            child: Text('Insights Text', style: TextStyle(fontSize: 24))));
  }
}
