import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class Titulos {

  final String himnos;

  Titulos({this.himnos});

  factory Titulos.fromJson(Map<String, dynamic> parsedJson) {
    return new Titulos(
        himnos: parsedJson['texto']);
  }
  
} 

class CategoryViewModel {
  static List<Titulos> titles;

  static Future loadTitulos() async {
    try {
      titles = new List<Titulos>();
      String jsonString = await rootBundle.loadString('assets/buscador_opts.json');
      Map parsedJson = json.decode(jsonString);
      var categoryJson = parsedJson['listas'] as List;
      for (int i = 0; i < categoryJson.length; i++) {
        titles.add(new Titulos.fromJson(categoryJson[i]));
      }
    } catch (e) { 
      print(e);
    }
  }
}

class BuscadorProvider {
  List<dynamic> opciones=[];
  List<dynamic> opcionesDos = [];
  List<dynamic> listaTitulos = [];


  Future<List<dynamic>> cargarData() async{
     
    final resp = await rootBundle.loadString('data/buscador_opts.json');
     Map dataMap = json.decode(resp);
       
       opciones = dataMap['listas']; 

       return opciones;
     }

    Future<List<dynamic>> cargarBuscador(query) async{
     
    final resp = await rootBundle.loadString('data/buscador_opts.json');
     Map dataMap = json.decode(resp);
       
       opcionesDos = dataMap['listas'] as List; 
       listaTitulos = dataMap['texto'];

       return opcionesDos;

     }

     Future<List<dynamic>> buscarHimno(String query) async{

       
     
    final resp = await rootBundle.loadString('data/buscador_opts.json');
     Map dataMap = json.decode(resp.toString());
       
       opcionesDos = dataMap['listas'] as List; 
       listaTitulos = dataMap['texto'];

       return opcionesDos;

     }

   

  }




final buscadorProvider = new BuscadorProvider();