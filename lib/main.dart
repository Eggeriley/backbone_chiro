import 'package:backbone_chiro/listitem.dart';
import 'package:backbone_chiro/pages/Exercises.dart';
import 'package:backbone_chiro/pages/InboxScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:backbone_chiro/constants.dart';


import 'pages/SignIn.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BackBone',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: BackBoneApp(),
    );
  }
}

class BackBoneApp extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<String> trainingImage = [
  "https://images.unsplash.com/photo-1540206235220-7590996b7a5a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8YmFja2wlMjB0cmFpbmluZ3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
  "https://images.unsplash.com/photo-1529516548873-9ce57c8f155e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
  "https://images.unsplash.com/photo-1571019614242-c5c5dee9f50b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
  "https://images.unsplash.com/photo-1476480862126-209bfaa8edc8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8dHJhaW5pbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
  "https://images.unsplash.com/photo-1518459031867-a89b944bffe4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzR8fGV4ZXJjaXNpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
];


class _HomePageState extends State<BackBoneApp> {
int _currentIndex = 1;
final List<Widget> _children = [
  SignIn(),
  Exercises(),
  InboxScreen(),
];

void OnTappedBar(int index)
{
  setState(() {
    _currentIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
          ];
        },
        //Temp text
        body: _children[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: OnTappedBar,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Sign In',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Inbox',
          ),
        ],
      ),

    );
  }
}
