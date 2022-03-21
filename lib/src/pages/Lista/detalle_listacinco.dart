
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:disenos/src/pages/Lista/quinta_lista.dart';


class DetalleListaCinco extends StatefulWidget {

  
  final TodoCinco textoLetra;

  final TituloCinco titulo;

  DetalleListaCinco ({this.textoLetra, this.titulo });

  @override
  _DetalleListaState createState() => _DetalleListaState();
}

class _DetalleListaState extends State<DetalleListaCinco> {


  double _conteo = 25;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
        title: Text(widget.titulo.titles),
        actions:  <Widget>[
          IconButton(icon: Icon(Icons.remove_circle_outline), onPressed: _reducir),
          IconButton(icon: Icon(Icons.add), onPressed: _agregar),
       ],
  
      ),
      body: 
      Stack(

        children: <Widget>[
          _fondoApp(),
           
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _textoLetra()
              ],
            ))

          
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


    
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(widget.textoLetra.descripcion, style: TextStyle(fontSize: _conteo, color: Colors.white)),

    );
  }

  

    void _agregar(){
    setState(() =>  _conteo++);

  }
   void _reducir(){
    setState(() =>  _conteo--);

  }

}

