import 'package:flutter/material.dart';
import 'dart:ui';

class ContactoPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
        title: Text('Contacto'),
      ),
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
              ],  
            ),
          ),

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

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Estamos para Ayudarte', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox(height: 20.0),
            Text('Alguna duda sobre la aplicacion, alguna idea o si notan algun error, por favor contactarse a: \n\nchantocr96@hotmail.com', 
            style: TextStyle( color: Colors.white, fontSize: 25.0 )),
            SizedBox(height: 35.0),
            Text('Desarrollador: Gabriel Soto Rosabal  \n\nLetra: Panchito0621', 
            style: TextStyle( color: Colors.white, fontSize: 20.0 ))
          ],
        ),
      ),
    );

  }

 
}