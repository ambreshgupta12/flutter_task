import 'package:flutter/material.dart';
import 'package:flutter_task/src/ui/screen/product_screen.dart';
import 'package:flutter_task/src/ui/screen/swap_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          iconSize: 20.0,
          items: [
            BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
            BottomNavigationBarItem(title: Text('Swap'), icon: Icon(Icons.swap_calls)),
          ]),
      body: IndexedStack(
        index: currentIndex,
        children: <Widget>[ProductScreen(), SwapScreen()],
      ),
    );
  }
}
