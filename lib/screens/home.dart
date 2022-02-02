
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/screens/second.dart';


class Home extends StatelessWidget {
   Home({ Key? key }) : super(key: key);


goToNext() {
  Get.to(const Second());
  // Navigator.push(context, MaterialPageRoute(builder: (context) => Other()));
}

_showSnackBar() {
  Get.snackbar("Hey There", "Snack is easy");
}

_showDialog()  {
  Get.defaultDialog(title: "SimpleDialogue",content: const Text("Too Easy"));
}

_showBottomSheet() {
  Get.bottomSheet(Container(
    child: Wrap(children: [
      ListTile(
        leading: const Icon(Icons.music_note),
        title:const Text('Music'),
        onTap: () => {},
      ),

       ListTile(
        leading:const Icon(Icons.videocam),
        title:const Text('Video'),
        onTap: () => {},
      ),
     const  SizedBox(height: 100,)
      
    ],)
    ),
    backgroundColor: Colors.white,
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx'),
        centerTitle: true,
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () => goToNext(), child: const Text("Go To Other")),
          ElevatedButton(onPressed: () => _showSnackBar(), child: const Text("SnackBar")),
          ElevatedButton(onPressed: () => _showDialog(), child: const Text("Dialog")),
          ElevatedButton(onPressed: () => _showBottomSheet(), child: const Text("Bottom Sheet")),
          const SizedBox(height: 50,),
          ElevatedButton(onPressed: () {
            Get.toNamed("second", arguments: "Passed from Home");
          }, child: const Text("Name Route: /second")),
        
        ],
      ),
      
      ),
      //  floatingActionButton: FloatingActionButton(
      //   onPressed: () {
        
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}

