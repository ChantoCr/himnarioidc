import 'package:flutter/material.dart';
import 'dart:ui';

class InformacionPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
        title: Text('Informacion'),
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
            Text('Iglesia de Cristo - Himnario y cánticos espirituales\n'
            , style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox(height: 20.0),
            Text('Esta aplicación fue desarrollada con la intención de ser una herramienta de ayuda, lastimosamente solo hay pocos hermanos trabajando en esta herramienta, por esto es que irá creciendo poco a poco en futuras actualizaciones. Por ahora solo existe la letra pero poco a poco se irán añadiendo los audios.', 
            style: TextStyle( color: Colors.white, fontSize: 25.0 )),
            SizedBox(height: 35.0),
            Text('Producción: Josué Soto Cambronero.\n\nDesarrollo: Gabriel Soto Rosabal.\n\nPara cualquier información, correos y contactos visite el siguiente sitio web:\n\nbibliayopinion.com \n\nEsperamos que esta herramienta le sea útil en la adoración a nuestro Señor y que la honra y la gloria sean para con Él, por los siglos de los siglos.', 

            //'Iglesia de Cristo  \n\nHimnos y Canticos'
            //'Esta es una aplicacion para disfrutar con gozo y alegria los himnos y canticos'
            //'Aplicacion para celular \n\nLenguaje de Programacion: Dart \n\n Framework: Flutter'
            style: TextStyle( color: Colors.white, fontSize: 20.0 ))
          ],
        ),
      ),
    );

  }

}