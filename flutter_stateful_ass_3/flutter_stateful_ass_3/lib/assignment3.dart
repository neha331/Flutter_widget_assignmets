import 'package:flutter/material.dart';


class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  @override 
  State<Assignment3> createState()=> _Assignment3State();
}

class _Assignment3State extends State<Assignment3>{
  int? selectedIndex =0;
  final List<String> imageList=["https://media.istockphoto.com/id/1462151146/photo/hands-growing-a-young-plant.jpg?s=2048x2048&w=is&k=20&c=ky5cj_N-nrd8qvbyRuYX-uv8NHltUoScloGoQ10xH2I=", "https://media.istockphoto.com/id/1458215547/photo/brown-bear.jpg?s=2048x2048&w=is&k=20&c=fseAsXU3g7ZDzbsWP39rZqfxonh_JOqkGg2LRE5rY7g="
  ];
  
  void showNextImage(){
    setState((){
      selectedIndex= selectedIndex! +1;

    });
  }
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text("Display Images"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageList[selectedIndex!],
          width:300,
          height:300,
          ),
          const SizedBox(height:200),
          ElevatedButton(onPressed: showNextImage, child: const Text("next"),),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed:() {
              setState(() {
                selectedIndex=0;
              });

          }, child: const Text("Reset"))
        ],
      ),
    )
    );
}
}