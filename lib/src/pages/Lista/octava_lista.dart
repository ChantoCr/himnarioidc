
import 'package:disenos/src/pages/Lista/detalle_listaocho.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:disenos/src/providers/menu_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class TodoOcho {
  
  final String descripcion;

  TodoOcho(this.descripcion);
  
}

class TituloOcho {
  
  final String titles;

  TituloOcho(this.titles);
  
}



class OctavaLista extends StatelessWidget {
  
  

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
          _lista(),
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

  Widget _lista(){

    return FutureBuilder(
      future: menuProvider.cargarDataOcho(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {
        return ListView(
        children: _listaItems(snapshot.data, context),
        );
      },
   );
  } 
 

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

  final List<Widget> opciones = [];
  
  data.forEach((opt){
    

    final widgetTemp = ListTile(
      
      contentPadding: EdgeInsets.all(5),
      
      title: Text(opt ['texto'],style: TextStyle(fontSize: 25, color: Colors.white)),
      subtitle: Text(opt['subtexto'],style: TextStyle(fontSize: 17, color: Colors.amberAccent)),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.lightBlueAccent,),

    

      onTap: () {

        final textoLetra = TodoOcho((opt["letra"]));

        final titulo = TituloOcho((opt["texto"]));
        
        

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalleListaOcho(textoLetra: textoLetra,titulo : titulo)
          )
        );   
      }, 
 
    ); 

    
    opciones..add( widgetTemp )
            ..add(Divider())
            ;
      

  });
  return opciones;
  }

  

}