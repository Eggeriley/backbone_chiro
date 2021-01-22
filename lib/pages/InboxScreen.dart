import 'package:flutter/material.dart';
import '../main.dart';

class InboxScreen
    extends StatefulWidget {
  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:12.0,  bottom: 8.0),
              child: Text(
                'Notifications',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check_circle,),
                trailing: Icon(Icons.list,),
                title: Text('Message of the Week!'),
                subtitle: Text('laurem ipsom text is the subline...'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check_circle,),
                trailing: Icon(Icons.list,),
                title: Text('Something else to look at'),
                subtitle: Text('laurem ipsom text is the subline...'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check_circle,),
                trailing: Icon(Icons.list,),
                title: Text('Something else to look at'),
                subtitle: Text('laurem ipsom text is the subline...'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check_circle,),
                trailing: Icon(Icons.list,),
                title: Text('Something else to look at'),
                subtitle: Text('laurem ipsom text is the subline...'),
                onTap: () {},
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.check_circle,),
                trailing: Icon(Icons.list,),
                title: Text('Look it repeats'),
                subtitle: Text('laurem ipsom text is the subline...'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check_circle,),
                trailing: Icon(Icons.list,),
                title: Text('Message of the Week!'),
                subtitle: Text('laurem ipsom text is the subline...'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.check_circle,),
                trailing: Icon(Icons.list,),
                title: Text('Something else to look at'),
                subtitle: Text('laurem ipsom text is the subline...'),
                onTap: () {},
              ),
            ),
          ],
        ),
      )
          );
  }
}
