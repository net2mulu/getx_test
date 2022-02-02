import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_test/screens/fourth.dart';
import 'package:getx_test/screens/home.dart';
import 'package:getx_test/screens/second.dart';
import 'package:getx_test/screens/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple).copyWith(secondary: Colors.purpleAccent)
      ),
      getPages: [
        GetPage(name: "/", page: ()=> Home()),
        GetPage(name: "/second", page: ()=> const Second()),
        GetPage(name: "/third", page: ()=> const Third(), transition: Transition.zoom),
        GetPage(name: "/fourth", page: ()=> const Fourth()),
      ],
      
    );
  }
}

