import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class si_calculator extends StatefulWidget {
  const si_calculator({super.key});

  @override
  State<si_calculator> createState() => _si_calculatorState();
}

class _si_calculatorState extends State<si_calculator> {
  double principle =0;
  double rate =0;
  double time =0;
  String simpleInterest ="";

  //simple Interest
  siResult(){
    return (principle*rate*time)/100;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("SI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),//
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
          Text( 
          "Principle", style:TextStyle(fontSize:24,fontWeight: FontWeight.bold,
          ),
          ), 
          TextField(
            onChanged:(value){
              principle=double.parse(value);

            },
            decoration:const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Principle"
            ),
          ), 
          SizedBox(height: 20,),
           Text( 
          "Rate" , style:TextStyle(fontSize:24,fontWeight: FontWeight.bold,
          ),
          ), 
          TextField(
            onChanged:(value){
              rate =double.parse(value);

            },
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Rate"
            ),
          ), 
          SizedBox(height: 20,),
          Text( 
          "Time" , style:TextStyle(fontSize:24,fontWeight: FontWeight.bold,
          ),
          ), 
          TextField(
            onChanged:(value){
              time =double.parse(value);
            },
            decoration: InputDecoration(
              
            border: OutlineInputBorder(),
            hintText: "Enter Time"
            ),
          ), 
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,

              ),
              onPressed: (){
                setState(() {
                  double  si =siResult();
                  simpleInterest ="Your SI Amount is:$si";
                });
              }
              , child: const Text("Calculator")),
          ),
          Text(simpleInterest,
          style:const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),textAlign: TextAlign.center,
          ),
        ],),
      ),
  ); }
}