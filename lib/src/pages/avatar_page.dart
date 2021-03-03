import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        centerTitle: true,
        actions: <Widget>[
          CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.greenAccent,
          ),
           Container(
              child: CircleAvatar(
              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg'),
            ),
           )
        ],
      ), 
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image:NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      )
    );
  }
}