import 'package:flutter/material.dart';

class SwapScreen extends StatefulWidget {
  @override
  _SwapScreenState createState() => _SwapScreenState();
}

class _SwapScreenState extends State<SwapScreen> {
  int a = 5, b = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "A=$a",
              style: TextStyle(fontSize: 20),
            ),
            Text("B=$b", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Swap Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.swap_horiz),
        tooltip: "Swap value",
        onPressed: swap,
      ),
    );
  }

  void swap() {
    a = a + b;
    b = a - b;
    a = a - b;
    setState(() {});
  }
}
