import 'package:flutter/material.dart';
void main() => runApp(xcz());
class xcz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Responsive UI',
      debugShowCheckedModeBanner: false,
      home: ResponsiveHome(),
    );
  }
}
class ResponsiveHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Decide layout based on screen width
    if (screenWidth < 600) {
      return Mobile();
    } else if (screenWidth < 1100) {
      return Tablet();
    } else {
      return Desktop();
    }
  }
}
class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobile')),
      body: Center(
        child: Text('This is Mobile View', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
class Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tablet')),
      body: Center(
        child: Text('This is Tablet View', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Desktop')),
      body: Center(
        child: Text('This is Desktop View', style: TextStyle(fontSize: 36)),
      ),
    );
  }
}
