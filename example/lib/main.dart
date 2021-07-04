import 'package:flutter/material.dart';
import 'package:slider_popup/slider_popup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text("Slide Popup"),
      ),
      body: SliderPopup(
        height: 300,
        color: Colors.white,
        child: Icon(Icons.emoji_emotions_outlined,
          size: 200,
          color: Colors.purple),
        alignment: Alignment.center,
        borderRadius: 40,
        duration: Duration(milliseconds: 1000),
        barrierDismissible: true,
      ),
    );
  }
}
