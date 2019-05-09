import 'package:flutter/material.dart';

import 'Chatscreen.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                print("click search");
              },
            ),
          ],
          leading: InkWell(
            child: Icon(Icons.menu),
            onTap: () {
              print("click settings");
            },
          ),
          title: Center(
              child: Text(
            'Messages',
            style: TextStyle(fontSize: 25, letterSpacing: 1),
          )),
          flexibleSpace: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: [
                    const Color(0xFF9d86de),
                    const Color(0xFFc6b5ed),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),
        ),
        body: Chatscreen(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:Color(0xFFc6b5ed) ,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble, color:  Colors.white),
                title: new Text('chat',style: TextStyle(color: Colors.white,fontSize: 17),)),
            BottomNavigationBarItem(
                icon: Icon(Icons.people, color: Colors.white),
                title: new Text('contact',style:  TextStyle(color: Colors.white,fontSize: 17),)),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white),
                title: new Text('profile',style:  TextStyle(color: Colors.white,fontSize: 17),)),

          ],

        ));
  }
}
