import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        centerTitle: true
      ),
      body: Center(
        child: FlatButton(
            onPressed:() =>abrirPopUp(context),
             child: Text('Mostrar PopUp'),
             color: Colors.blueAccent,
            
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
       ),   
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout, color: Colors.white60),
        onPressed:()=> Navigator.pop(context)
      )
    );
  }

  void abrirPopUp(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return  AlertDialog( 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
         content: Column(
           mainAxisSize: MainAxisSize.min,
         children:<Widget> [
           Text('Titulo del dialogo',style: TextStyle(fontSize: 20.0, fontWeight:FontWeight.bold ),),
           Text('Descripcion del dialogo',style: TextStyle(fontSize: 15.0,color: Colors.black54 ),),
           SizedBox(height: 20,),
           FlutterLogo(size:100.0,)
         ] ,
        ),
        actions: [
          FlatButton(onPressed: ()=>Navigator.of(context).pop(), 
           child: Text('Cancelar')
          ),
           FlatButton(onPressed: ()=>Navigator.of(context).pop(), 
           child: Text('Ok')
          )
        ],
      );
     }

    );
  }
}