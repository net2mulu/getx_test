import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/screens/home.dart';


class Third extends StatelessWidget {
  const Third({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () => Get.offAll( Home()), child: const Text("Go home"))
        ],
      ),),
    );
  }
}