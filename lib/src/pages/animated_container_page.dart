import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width=50.0;
  double _height=50.0;
  Color _color=Colors.greenAccent;
  BorderRadiusGeometry _borderRadius=BorderRadius.circular(20.0);
  IconData _icon=Icons.play_arrow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
       body:Center(
         child: AnimatedContainer(
           duration: Duration(seconds: 1),
           curve: Curves.easeOutQuart,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius:_borderRadius,
            color: _color,
          ),
         ),
      ) ,
      floatingActionButton: FloatingActionButton(
       child: Icon(_icon), 
       onPressed: (){
         setState(() {
           Random random=Random();
              _width=random.nextInt(300).toDouble();
              _height=random.nextInt(300).toDouble();
              _color=Color.fromRGBO(
                 random.nextInt(255),
                 random.nextInt(255),
                 random.nextInt(255), 
                 1);
         
         }
        );
       },
      ),
    );
  }
}