import 'package:flutter/material.dart';

class HomeList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 300,
        color: Colors.black12,
      )
    );
  }
}

class HomeList1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          child: Center(child: Text(
            'INDIAN RED CROSS SOCIETY',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),),
          height: 100,
          color: Colors.black12,
        )
    );
  }
}