import 'package:flutter/material.dart';

class SliverApp extends StatefulWidget {
  @override
  _SliverAppState createState() => _SliverAppState();
}

class _SliverAppState extends State<SliverApp> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 8, top: 20,),
        child: Text('Good Morning \nRiley',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 26
          ),),
      ),
      expandedHeight: 250.0,
      pinned: false,
      floating: true,
      centerTitle: false,
      backgroundColor: Colors.black,
      toolbarHeight: 120.0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8, right: 18),
          child: GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text('RH',),
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset('images/header_img.jpg',
          alignment: Alignment.centerLeft,
          fit: BoxFit.contain,
          color: Colors.white12,
          colorBlendMode: BlendMode.darken,
        ),
      ),
    );
  }
}
