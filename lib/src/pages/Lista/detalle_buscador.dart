

import 'package:disenos/src/search/search_delegate.dart';
import 'package:flutter/material.dart';
import 'dart:ui';


class DetalleListaBuscador extends StatelessWidget {

  
  final Todos textoLetras;
  
  final Titulos titulos;

  DetalleListaBuscador ({this.textoLetras, this.titulos });
  

  //DetalleLista({Key key, this.todo}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
        title: Text(titulos.titlesS),
      ),
      body: 
      Stack(
        children: <Widget>[
          _fondoApp(),
          _textoLetra()
         // _lista()
          ],
      ),

    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );
    return Stack(
      children: <Widget>[
        gradiente,        
      ],
    );

  }
  Widget _textoLetra() {


    
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Text(textoLetras.descripcion, style: TextStyle(fontSize: 25, color: Colors.white)),

    );
  }

}