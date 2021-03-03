import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes'),),
      body: _lista(),
          );
        }
      
  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder:(context, AsyncSnapshot<List<dynamic>> snapshot){
      return ListView(
        children: _crearListaItems(snapshot.data,context),
      );
      },
    );
  }
         
  List<Widget> _crearListaItems(List<dynamic> data,BuildContext context) {
      final List<Widget> lista=[];
      data.forEach((opt) {
        final ListTile tmp= new ListTile(title: Text(opt['texto']), 
        leading: getIcon(opt['icon']) ,
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
        onTap: (){
          //Forma de navegar entre ventanas
         // final route=MaterialPageRoute(builder: (context)=>AlertPage());
         // Navigator.push(context, route);
         Navigator.pushNamed(context, opt['ruta']);
        },);
      lista..add(tmp)
           ..add(Divider(color: Colors.blueAccent));
      });

      return lista;
  }
}