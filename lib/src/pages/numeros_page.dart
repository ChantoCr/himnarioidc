import 'package:flutter/material.dart';
import 'dart:ui';

class BuscarNumero extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
        title: Text('Buscar por numero'),
      ),
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //_titulos(),
                _botonesNumeros(context),
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

  
  Widget _botonesNumeros( context ) {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.purpleAccent,'1 - 50', context, 'primerLista'),
            _crearBotonRedondeado(Colors.blueGrey, '51 - 100', context, 'segundaLista'),            
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.deepPurpleAccent, '101 - 150', context, 'tercerLista'),
            _crearBotonRedondeado(Colors.deepOrangeAccent, '151 - 200', context, 'cuartaLista'),          
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.green, '201 - 250', context, 'quintaLista'),
            _crearBotonRedondeado(Colors.amberAccent, '251 - 300', context, 'sextaLista'),            
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.tealAccent, '301 - 350', context, 'setimaLista'),
            _crearBotonRedondeado(Colors.red, '351 - 368', context, 'octavaLista'),            
          ]
        ),
      ],
    );
    }
  }

      Widget _crearBotonRedondeado(Color color, String texto, BuildContext context, String ruta) {

      return Padding(
          padding: EdgeInsets.all(3.0),
         child: GestureDetector( 
          onTap: () => Navigator.pushNamed(context, ruta),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                height: 140.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(50.0),
                ),   
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    /*CircleAvatar(
                      backgroundColor: color,
                      radius: 20.0,
                      child: Icon(icono, color: Colors.white, size: 20.0,),
                    ),*/
                    Text( texto, style: TextStyle(color: color, fontSize: 32, fontWeight: FontWeight.w600)),
                    
                    //SizedBox(height: 0),
                  ],
                ),    
              ),
            ),
          ),
         ),
      );  

}