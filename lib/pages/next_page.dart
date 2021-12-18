import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
 // const NextPage({Key? key}) : super(key: key);
  static final String id="next_page";

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text("Welcome to Home"),
       elevation: 0,
        centerTitle: true,
      ),

    );
  }
}
