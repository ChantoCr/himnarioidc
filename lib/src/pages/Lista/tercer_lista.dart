import 'package:disenos/src/pages/Lista/detalle_listatres.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:disenos/src/providers/menu_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class TodoTres {

  final String descripcion;

  TodoTres(this.descripcion);
  
}

class TituloTres {
  
  final String titlesTres;

  TituloTres(this.titlesTres);
  
}


class TercerLista extends StatelessWidget {
  
  

  //PrimerLista({Key key, this.todos}) : super(key: key);

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
      future: menuProvider.cargarDataTres(),
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
      subtitle: Text(opt['subtexto'],style: TextStyle(fontSize: 15, color: Colors.amberAccent)),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.lightBlueAccent,),

    

      onTap: () {

        final textoLetraTres = TodoTres((opt["letra"]));
        
        final tituloTres = TituloTres((opt["texto"]));

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetalleListaTres(textoLetraTres: textoLetraTres,tituloTres: tituloTres)
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