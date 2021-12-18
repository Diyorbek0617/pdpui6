import 'package:flutter/material.dart';
import 'package:pdpui6/pages/home_page.dart';
import 'package:pdpui6/pages/next_page.dart';

main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: {
      HomePage.id:(context)=>HomePage(),
      NextPage.id:(context)=>NextPage(),
    },
  ));
}