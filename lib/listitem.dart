import 'package:flutter/material.dart';

Widget ListItem(String bg, String title, int exercises, int time,) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 10,),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(bg),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken,),
      ),
      borderRadius: BorderRadius.circular(15)
    ),
    child: Padding(
      padding: const EdgeInsets.only(top:30.0, bottom: 30, left: 8, right: 8,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${exercises} Excercises",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${time} Minutes Per Day",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
  );
}