import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

final List<String> opciones =['Uno','Dos','Tres','Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        centerTitle: true,
      ),
      body: ListView(
        children:_crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItemsCorto(){
    return opciones.map((item) {
        return Column(
          children: <Widget>[
            ListTile(
                title: Text(item),
                subtitle: Text('Descripcion'),
                leading: Icon(Icons.access_time_outlined),
                trailing: Icon(Icons.arrow_right),
                onTap: (){},
            ),
            Divider()
          ],
        );
    }).toList();
  }
}