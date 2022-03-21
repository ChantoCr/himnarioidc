
import 'package:flutter/material.dart';
import 'package:disenos/src/pages/home_page.dart';
import 'package:flutter/services.dart';

import 'package:disenos/src/pages/numeros_page.dart';
import 'package:disenos/src/pages/informacion_page.dart';
import 'package:disenos/src/pages/contacto_page.dart';
import 'package:disenos/src/pages/aleatorio_page.dart';

import 'package:disenos/src/pages/Lista/primer_lista.dart';
import 'package:disenos/src/pages/Lista/segunda_lista.dart';
import 'package:disenos/src/pages/Lista/tercer_lista.dart';
import 'package:disenos/src/pages/Lista/cuarta_lista.dart';

import 'package:disenos/src/pages/Lista/quinta_lista.dart';
import 'package:disenos/src/pages/Lista/sexta_lista.dart';
import 'package:disenos/src/pages/Lista/setima_lista.dart';
import 'package:disenos/src/pages/Lista/octava_lista.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black38
    ));


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Himnos y Canticos',
      initialRoute: 'main',      

      routes: {
        'main'         : (BuildContext context) => BotonesPage(),
        'numero'       : (BuildContext context) => BuscarNumero(),
        'aleatorio'    : (BuildContext context) => AleatorioPage(),
        'informacion'  : (BuildContext context) => InformacionPage(),
        'contacto'     : (BuildContext context) => ContactoPage(),

        'primerLista'  : (BuildContext context) => PrimerLista(),
        'segundaLista' : (BuildContext context) => SegundaLista(),
        'tercerLista'  : (BuildContext context) => TercerLista(),
        'cuartaLista'  : (BuildContext context) => CuartaLista(),
        'quintaLista'  : (BuildContext context) => QuintaLista(),
        'sextaLista'   : (BuildContext context) => SextaLista(),
        'setimaLista'  : (BuildContext context) => SetimaLista(),
        'octavaLista'  : (BuildContext context) => OctavaLista(),
        

      },
    );
  }
}