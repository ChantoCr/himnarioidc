//import 'dart:js';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';
import 'package:disenos/src/search/search_delegate.dart';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(), 

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(context),
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

    final caja = Transform.rotate(
      angle: -pi / 5.0, 
      child: Container(
        height: 380.0,
        width: 380.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0) 
            ]
          ),
        ),
      ),
    );
    

    return Stack(
      children: <Widget>[
        gradiente,

        Positioned (
          top: -90,
          child : caja,
        )
        
      ],
    );

  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 15.0, right: 130.0, bottom: 65),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Iglesia de Cristo', style: TextStyle( color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold )),
            SizedBox(height: 20.0),
            Text('Himnario y cánticos \n   espirituales', style: TextStyle( color: Colors.white, fontSize: 25.0 ))
          ],
        ),
      ),
    );

  }


  Widget _botonesRedondeados( context ) {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.green, Icons.info, 'Informacion', context, 'informacion'),
            _crearBotonRedondeado(Colors.blueGrey, Icons.format_list_numbered, '    Buscar \npor numero', context, 'numero'),            
          ]
        ),

        TableRow(
          children: [
            SizedBox(height: 55.0,),
            SizedBox(height: 55.0,)

            ]
        ),
        
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.deepPurpleAccent, Icons.help_outline, 'Himno Aleatorio', context, 'aleatorio'),
            _crearBottonBuscar(Colors.deepOrangeAccent, Icons.search, '  Buscar numero, \n    titulo o letra', context), 
               
          ]
        ),/*
        TableRow(
          children: [
             _crearBotonRedondeado(Colors.purpleAccent, Icons.monetization_on, 'Donaciones', context, 'donaciones'),
            _crearBotonRedondeado(Colors.amberAccent, Icons.contact_mail, 'Contacto', context, 'contacto'),            
          ]
        ),*/
      ],
    );
    }
  }

   Widget _crearBotonRedondeado(Color color, IconData icono, String texto, BuildContext context, String ruta) {

      return Padding(
          padding: EdgeInsets.all(1.0),
         child: GestureDetector( 
          onTap: () => Navigator.pushNamed(context, ruta),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                height: 200.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20.0),
                ),   
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 2.0),
                    CircleAvatar(
                      backgroundColor: color,
                      radius: 50.0,
                      child: Icon(icono, color: Colors.white, size: 50.0,),
                    ),
                    Text( texto, style: TextStyle(fontSize: 23.0, color : color)),
                    SizedBox(height: 2.0)
                  ],
                ),    
              ),
            ),
          ),
         ),
      );  
  
}  

Widget _crearBottonBuscar(Color color, IconData icono, String texto, BuildContext context ) {

      return Padding(
          padding: EdgeInsets.all(1.0),
         child: GestureDetector( 
         onTap: () {
              showSearch(
                context: context, 
                delegate: DataSearch(),
              );},
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                height: 200.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20.0),
                ),   
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(height: 2.0),
                    CircleAvatar(
                      backgroundColor: color,
                      radius: 50.0,
                      child: Icon(icono, color: Colors.white, size: 50.0,),
                    ),
                    Text( texto, style: TextStyle(fontSize: 23.0, color : color)),
                    SizedBox(height: 2.0)
                  ],
                ),    
              ),
            ),
          ),
         ),
      );  

}