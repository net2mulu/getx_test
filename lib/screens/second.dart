import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/screens/fourth.dart';
import 'package:getx_test/screens/third.dart';


class Second extends StatefulWidget {
  const Second({ Key? key }) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  String dataFromFourth = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center( child: (Get.arguments != null) ? Text(Get.arguments) : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () => Get.off(const Third()), child: const Text("Go to Third and Remove this section from stack"),),
          ElevatedButton(onPressed: () => Get.offAll(const Third()), child: const Text("Go to Third and Remove everything from stack"),),
          const SizedBox(height: 100,),
          Text("Data from fourth screen: " + dataFromFourth, style: const TextStyle(color: Colors.black), ),
          ElevatedButton(onPressed: () async{
              dataFromFourth = await Get.to(const Fourth());
              setState(() {
                
              });
          }, child: const Text('Return data from fourth screen')),
          const SizedBox(height: 40.0,),
          ElevatedButton(onPressed: (){}, child: const Text("Goto Named /fourrth with parameter")),

        ],
      ),),
    );
  }
}