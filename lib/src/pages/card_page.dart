import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
        body: ListView(
          children: <Widget>[
            _tarjetaTipo1(),
            SizedBox(height: 10,),
            _tarjetaTipo2()
          ]
           ,
          padding: EdgeInsets.all(10.0),    
        ),
    );
 }
          
  Widget _tarjetaTipo1() {
    return 
      //Primera Tarjeta
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 20.0,
          //Contenido de la tarjeta
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Titulo de un ListTile'),
                subtitle: Text('Esta es el subtitulo de un listTile'),
                leading: Icon(Icons.card_membership, color: Colors.cyan,),
                onTap: (){},
              ),
              Row(
                children: <Widget>[
                  FlatButton(onPressed: (){}, child: Text('Cancelar'),),
                  FlatButton(onPressed: (){}, child: Text('ok'),)
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              )
            ],
          ),
        )
    ;
  }

  Widget _tarjetaTipo2() {
    final Card card= Card(
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 20.0,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              child: FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
                fadeInDuration: Duration(milliseconds: 100),),
            ),
              SizedBox(height: 10.0,),
              Container(
                child: Text('Descripcion de la imagen',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
                ),
                height:45.0,
              )
          ],
        ),

    );

    return card;
    
  }

}