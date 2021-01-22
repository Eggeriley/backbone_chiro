import 'package:flutter/material.dart';
import '../main.dart';
import 'package:backbone_chiro/listitem.dart';
export 'package:backbone_chiro/pages/Exercises.dart';

class Exercises extends StatefulWidget {
  @override
  _ExercisesState createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 20,
              ),
              child: Text(
                'Good Morning \nRiley',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 26),
              ),
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
                    child: Text(
                      'RH',
                    ),
                  ),
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/header_img.jpg',
                alignment: Alignment.centerLeft,
                fit: BoxFit.contain,
                color: Colors.white12,
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Exercises',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListItem(trainingImage[0], '▶ Session 1', 10, 20),
              ListItem(trainingImage[1], '▶ Session 2', 12, 24),
              ListItem(trainingImage[2], '▶ Session 3', 5, 15),
              ListItem(trainingImage[3], '▶ Session 4', 7, 10),
              ListItem(trainingImage[4], '▶ Session 5', 8, 34),
            ],
          ),
        ),
      ),
    );
  }
}
