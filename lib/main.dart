import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: "My  FIrst App",
    home: Firstpage(),
  ));
}
class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: Text("FlipLearn Public School(FPS)",style: TextStyle(fontSize: 50.0)),

          alignment: Alignment.center,
          height:53,


          decoration: BoxDecoration(
           image:const DecorationImage(image: NetworkImage('https://picsum.photos/250?image=9'),
             ),
            shape: BoxShape.circle,

          ),

        ),leading: GestureDetector(
        onTap: () { /* Write listener code here */ },
        child: Icon(
          Icons.menu,  // add custom icons also
        ),
      ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          width:500,
          height: 400,
          child: Center(child: Text("Good Morning,\nTo all the teachers of FlipLearn Public School")),
        ),
      ),

    );
  }
}

