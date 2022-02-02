import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fourth extends StatelessWidget {
  const Fourth({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () => Get.back(result: "Hello"), child: const Text("Return hello")),
          ElevatedButton(onPressed: () => Get.back(result: "World"), child: const Text("Return world"))
        ],
      ),),
    );
  }
}