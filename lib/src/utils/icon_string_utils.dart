import 'package:flutter/material.dart';

final Map<String,IconData> _iconos=<String,IconData>{

    'add_alert'    :Icons.add_alert,
    'accessibility':Icons.accessibility,
    'folder_open'  :Icons.folder_open,
    'donut_large'  :Icons.donut_large,
    'input'        :Icons.input,
    'slider'      :Icons.list,
    'list'         :Icons.list
};

Icon getIcon(String nombre)=> 
     Icon(_iconos[nombre],color: Colors.blueAccent,);
