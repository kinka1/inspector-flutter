import 'package:flutter/material.dart';

Widget Field (String labelText){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(labelText, style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.end,),
      SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
          ),
          focusColor: Colors.black,
          // labelText: labelText,
        ),
      ),
    ],
  );
}