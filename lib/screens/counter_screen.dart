import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
int counter = 0;
void _decrementCounter(){
  setState(() {
    counter--;
  });
}
void _incrementCounter(){
  setState(() {
    counter++;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COUNTER'),backgroundColor: Colors.black,
centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Counter:"),
          Text('$counter'),
          Row(
            children: [
             
              IconButton(onPressed:  _incrementCounter,
                tooltip: 'íncrement',icon: Icon(Icons.add),),
               IconButton(onPressed:  _decrementCounter,
                tooltip: 'decrement', icon: Icon(Icons.minimize_outlined),),

              

            ],
          )



        ],
      ),
    );
  }
}