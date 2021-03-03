import 'package:flutter/material.dart';

import 'package:componentes/src/routes/route_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,localizationsDelegates: [
         GlobalMaterialLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,
         GlobalCupertinoLocalizations.delegate,
      ],supportedLocales: [
         const Locale('en', ''), // English, 
        const Locale('es', 'ES'), // Español, 
    
      ],
      title: 'Material App',
      initialRoute: '/',
      routes:getRoutePages(),
   );
  }
}