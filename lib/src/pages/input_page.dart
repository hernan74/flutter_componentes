import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 String _nombre='';
  String _email='';
  TextEditingController _textInputFechaController=new TextEditingController();
  List<String> _listaItem=['Opcion 1','Opcion 2','Opcion 3','Opcion 4'];
  String _opcionSeleccionada='Opcion 1';

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
           SizedBox(height: 20,), 
          _crearCampoFecha(),
           SizedBox(height: 20,),
          _crearDropdown(),
           SizedBox(height: 20,),
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
Widget _crearDropdown(){
   return Row(
     mainAxisSize: MainAxisSize.max,
     children: [
       Icon(Icons.accessibility_sharp),
       SizedBox(width: 20,),
       DropdownButton(
         value: _opcionSeleccionada,
         items: _getOpciones(),
         onChanged: (opt){
           setState(() {
          _opcionSeleccionada=opt;
           });
         },
        ),
     ],
   );
}
List<DropdownMenuItem<String>> _getOpciones(){
List<DropdownMenuItem<String>> items=new List();
_listaItem.forEach((element) {
  items.add(DropdownMenuItem(
    child: Text(element) ,
    onTap: (){
    },
    value: element,
    )
    );
}
);
return items;
}

Widget _crearCampoPassword(){
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Descripcion del campo',
        labelText: 'Password',
        prefixIcon: Icon(Icons.lock_outline_rounded),
        suffixIcon: Icon(Icons.lock_outline_rounded),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
      ),
    );
  }

Widget _crearCampoFecha(){
    return TextField(
      enableInteractiveSelection: false,
      controller: _textInputFechaController,
      decoration: InputDecoration(
      
        hintText: 'Descripcion del campo',
        labelText: 'Edad',
        prefixIcon: Icon(Icons.date_range),
        suffixIcon: Icon(Icons.date_range_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
      ),
      onTap:(){
        FocusScope.of(context).requestFocus(new FocusNode());
      _mostrarSelectorFecha(context);
      },
    );
  }

void _mostrarSelectorFecha(BuildContext context)async{

DateTime fecha= await showDatePicker(
  context: context, 
  initialDate: DateTime.now(), 
  firstDate: DateTime(2000),
  lastDate: DateTime(2025),
  locale: Locale('es','ES'));
   _textInputFechaController.text=fecha.toString();
}

Widget _crearContenedor(){
  return ListTile(
    title: Text('El nombre ingresado es: $_nombre'),
    subtitle: Text('El email ingresado es: $_email'),
  );
}
}