
import 'package:disenos/src/pages/Lista/detalle_buscador.dart';
import 'package:flutter/material.dart';
import 'package:disenos/src/providers/menu_provider.dart';
import 'package:disenos/src/providers/buscador_provider.dart';

class Todos {

  final String descripcion;

  Todos(this.descripcion);
  
}


class Titulos {
  
  final String titlesS;

  Titulos(this.titlesS);
  
}


class DataSearch extends SearchDelegate {

  String seleccion = '';
  final himnosProvider = new MenuProvider();

 
  @override
  List<Widget> buildActions(BuildContext context) {
    // Acciones de nuestro AppBar (como la x de tecto derecha)
    return [
      IconButton(
        icon: Icon(Icons.clear), 
        onPressed: (){
          query = ' ';
        })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda del AppBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow, 
        progress: transitionAnimation), 
      onPressed: (){
        close(context, null);
      }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Crea los resultados que vamos a mostrar
    return Center(
      child: /*FadeInImage(
          image: AssetImage('assets/img/no-image.jpg'),
          placeholder: AssetImage('assets/img/loading.gif'), 
          fadeInDuration: Duration(milliseconds: 150),
          fit: BoxFit.cover,
        )*/
      Container(
      
        height: 100.0,
        width: 100.0,
        color: Colors.blueAccent,
        child: Text('Error al buscar', style: TextStyle(fontSize: 15)),
      ),
    );
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    // Las sugerencias que aparecen cuando se escribe

    return FutureBuilder(
      future: buscadorProvider.buscarHimno(query),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      
        if (snapshot.hasData) {

           final himnos = snapshot.data.where((p)=> p.toString().toLowerCase().contains(query.toLowerCase())).toList();

           return ListView(
             
             children: himnos.map((himno){
                return ListTile(
                  
                  title: Text( himno ['texto'],style: TextStyle(fontSize: 20)),
                  subtitle: Text( himno['subtexto'],style: TextStyle(fontSize: 15)),
                  onTap: () {
                    final textoLetras = Todos((himno["letra"]));
                    final titulos = Titulos((himno["texto"]));
        
                    Navigator.push(
                    context,
                      MaterialPageRoute(
                      builder: (context) => DetalleListaBuscador(textoLetras: textoLetras, titulos: titulos)
                    )
                     ); 
                  },
                );
             }).toList(),
           );
           
         }  else {
           return Center(
             child: CircularProgressIndicator(),
           );
         }
      },
      
    );

  }

}
