import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre='';
  String _email='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:10,vertical: 30),
        children: <Widget>[
          _crearCampoTexto(),
          SizedBox(),
          _crearCampoEmail(),
          SizedBox(),
          _crearCampoPassword(),
           SizedBox(),
          _crearContenedor(),
        ],

      ),
    );
  }

  Widget _crearCampoTexto(){
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: 'Letras:${_nombre.length}',
        helperText: 'Nombre',
        hintText: 'Descripcion del campo',
        labelText: 'Nombre',
        icon: Icon(Icons.account_circle_rounded),
        suffixIcon: Icon(Icons.account_circle_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
      ),
      onChanged: (input){
        setState(() {
          _nombre=input;
        });
      },
    );
  }

 Widget _crearCampoEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        counterText: 'Letras:${_email.length}',
        helperText: 'Email',
        hintText: 'Descripcion del campo',
        labelText: 'Email',
        icon: Icon(Icons.email),
        suffixIcon: Icon(Icons.alternate_email),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
      ),
      onChanged: (input){
        setState(() {
          _email=input;
        });
      },
    );
  }

Widget _crearCampoPassword(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        helperText: 'Password',
        hintText: 'Descripcion del campo',
        labelText: 'Password',
        prefixIcon: Icon(Icons.lock_outline_rounded),
        suffixIcon: Icon(Icons.lock_outline_rounded),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
      ),
    );
  }


Widget _crearContenedor(){
  return ListTile(
    title: Text('El nombre ingresado es: $_nombre'),
    subtitle: Text('El email ingresado es: $_email'),
  );
}
}