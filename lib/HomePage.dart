import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final player = AudioPlayer();
  List<NumberAudio> numberList = [
    NumberAudio("one.wav", Colors.red, "One"),
    NumberAudio("two.wav", Colors.green, "Two"),
    NumberAudio("three.wav", Colors.lime, "One"),
    NumberAudio("four.wav", Colors.amber, "One"),
    NumberAudio("five.wav", Colors.pink, "One"),
    NumberAudio("six.wav", Colors.teal, "Six"),
    NumberAudio("seven.wav", Colors.deepOrange, "Seven"),
    NumberAudio("eight.wav", Colors.cyan, "Eight"),
    NumberAudio("nine.wav", Colors.blueGrey, "Nine"),
    NumberAudio("ten.wav", Colors.brown, "Ten")
  ];

  play(String uri) {
    player.play(AssetSource(uri));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
       title: Text("Spanish Numbers"),
     ),
     body: Container(
       child: Center(
         child: Column(
           children: [
             Image(image:AssetImage("images/logo.png"),
             ),
             Expanded(child: GridView.builder(
                 padding: EdgeInsets.all(10.0),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: 2.0,
                   crossAxisSpacing: 10.0 ,
                   mainAxisSpacing: 10.0
                 ),
                 itemCount: numberList.length,
                 itemBuilder: (context,i)=>SizedBox(
                   width: 100.0,
                   height: 50.0,
                   child: MaterialButton(
                     color: numberList[i].buttonColor,
                     child: Text(numberList[i].buttonText, style: TextStyle(
                       fontSize: 20.0,
                       color:Colors.white
                     ),),
                     onPressed:(){
                       this.play(numberList[i].audioUri);
                     } ,
                   ),
                 ),
             )
             )
           ],
         ),
       ),
     ),
    );
  }
}
