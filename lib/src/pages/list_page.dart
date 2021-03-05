import 'package:flutter/material.dart';
class ListaPage extends StatefulWidget {

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List <int> _listaNumeros=new List();
  int _indice=0;
  ScrollController _scrollController=new ScrollController();

@override
  void initState() {
    super.initState();
    _cargarMasResultados();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels==_scrollController.position.maxScrollExtent){
          _cargarMasResultados();
      }
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Builder'),
      ),
      body: _crearListView(),
    );
  }

  Widget _crearListView(){
    return ListView.builder(
      controller: _scrollController,
      itemCount:_listaNumeros.length,
      itemBuilder: (BuildContext context, int index){
        int valor=_listaNumeros[index];
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://picsum.photos/200/200?random=$valor')
        );
      });
  }

  void _cargarMasResultados(){
   
    for(int i=1;i<=10;i++){
      _indice++;
      _listaNumeros.add(_indice);
    }
    setState(() {
    
    });
  }
}