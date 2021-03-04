import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider=10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slider'),
      ),
      body: Column(
        children: <Widget>[
          _crearSlider(),
          FadeInImage(
            width: _valorSlider,
            height: _valorSlider,
            fadeInDuration: Duration(milliseconds: 200),
            placeholder:AssetImage('assets/jar-loading.gif') ,
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg'),
          )
        ],
        ),
    );
  }

 Widget _crearSlider() {
   return  Slider(
     value: _valorSlider,
     min: 10,
     max: 400,
     onChanged: (valor){
    setState(() {
    _valorSlider=valor;
    }
    );
   }
   );
 }
}