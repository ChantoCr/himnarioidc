import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class Tituloss {

  final String himnos;

  Tituloss(this.himnos);
  
}

class MenuProvider {
  List<dynamic> opciones=[];
  List<dynamic> opcionesDos = [];
  List<dynamic> listaTitulos = [];

  Future<List<dynamic>> cargarData() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listas']; 

       return opciones;
     }

     
  Future<List<dynamic>> cargarDataDos() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listasDos']; 

       return opciones;
     }
  
    Future<List<dynamic>> cargarDataTres() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listasTres']; 

       return opciones;
     }

    Future<List<dynamic>> cargarDataCuatro() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listasCuatro']; 

       return opciones;
     }

    Future<List<dynamic>> cargarDataCinco() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listasCinco']; 

       return opciones;
     }

     Future<List<dynamic>> cargarDataSeis() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listasSeis']; 

       return opciones;
     }

     Future<List<dynamic>> cargarDataSiete() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listasSiete']; 

       return opciones;
     }

     Future<List<dynamic>> cargarDataOcho() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listasOcho']; 

       return opciones;
     }

      Future<List<dynamic>> cargarBuscador(query) async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       
       opcionesDos = dataMap['listas']; 
       listaTitulos = dataMap['texto'];

       return opcionesDos;

     }

     /*

    Future<List<dynamic>> cargarLetra() async{
     
    final resp = await rootBundle.loadString('data/menu_opts.json');
     Map dataMap = json.decode(resp);
       if (opciones = dataMap['listas']) {
         letras = dataMap['letra']  ; 
       } else {
         errorTextConfiguration.toString();
       }
       
       return letras;
     }

     */

  }




final menuProvider = new MenuProvider();