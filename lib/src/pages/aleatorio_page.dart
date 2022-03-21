

import 'package:flutter/material.dart';
//import 'dart:math' ;
import 'dart:ui';
import 'package:disenos/src/providers/buscador_provider.dart';


    //var _r = Random.secure();
    //Random _rnd = new Random();


    var listaaa = [ ];

    

      var list = [
         'Iglesia de Cristo, reanima tu amor,\nY sigue la senda que Cristo trazó, \nAnuncia constante con fe y con valor, \nEl Santo Evangelio que Cristo enseñó.\n\n\nIglesia de Cristo, sé fiel al Señor, \n“Id por todo el mundo” es la comisión.\nConduce a las almas al buen Salvador, \nTodo el obediente tendrá salvación.\n\n\nConserva de Cristo la antorcha de luz, \nY sigue alumbrando con fe y con tesón, \nEnseña a las gentes que Cristo en la cruz, \nMurió para darles paz, gozo y perdón.\n\n\nUnidos en Cristo y en su santo amor,\nCon fe primitiva, sencilla, y fervor, \n“Una fe, un bautismo y un sólo Señor”,\n“Un solo rebaño y un sólo Pastor”.',
     'Canta, oh buen cristiano; \nDulce será cantar. \nHace el camino llano. \nLibra el pesar. \nCanta en las noches tristes. \nCanta en el sol y en luz. \nEl mal así resistes. \nCanta de Jesús.\n\n\nCanta, oh buen cristiano. \nTempla tu corazón. \nAlza a tu Soberano \nTu feliz canción. \nSiempre está lleno el mundo\nDe endechas y dolor. \nCanta el amor profundo \nDe tu Salvador. \n\n\nCanta oh buen cristiano. \nDios tu socorro es. \nEl sostendrá tu mano \nHasta la vejez.  \n¿Sabes que al diablo invitas, \nCuando medroso estás?\n Dios quitará tus penas. \nSi cantando vas.',
     '¡Oh Padre, eterno Dios! \nAlzamos nuestra voz en gratitud\nDe cuanto tú nos das con sin igual amor.\nHallando nuestra paz en ti, Señor.\n\n\n¡Bendito Salvador! \nTe damos con amor el corazón. \nY aquí nos puedes ver, que humildes a tu altar. \nVenimos a ofrecer precioso don.\n\n\n¡Espíritu de Dios! \nEscucha nuestra voz, y tu bondad \nDerrame en nuestro ser, divina claridad. \nPara poder vivir en santidad. Amén. ',
     'No te dé temor hablar por Cristo,\nHaz que brille en ti su luz; \nAl que te salvó confiesa siempre,\nTodo debes a Jesús.\n\n\nCORO\nNo te dé temor. No te dé temor.\nNunca, nunca, nunca. \nEs tu amante Salvador. \nNunca, pues, te dé temor.\n\n\nNo te dé temor hacer por Cristo \nCuanto de tu parte está;  \nObra con amor, con fe y constancia.\nTus trabajos premiará.\n\n\nCORO\nNo te dé temor. No te dé temor.\nNunca, nunca, nunca. \nEs tu amante Salvador. \nNunca, pues, te dé temor.\n\n\nNo te dé temor sufrir por Cristo\nLos reproches o el dolor. \nSufre con amor tus pruebas todas,\nCual sufrió tu Salvador.\n\n\nCORO\nNo te dé temor. No te dé temor.\nNunca, nunca, nunca. \nEs tu amante Salvador. \nNunca, pues, te dé temor.\n\n\nNo te dé temor vivir por Cristo \nEsa vida que te da. \nSi tan sólo en él por siempre fiares. \nEl con bien te sacará.\n\n\n\n\nCORO\nNo te dé temor. No te dé temor.\nNunca, nunca, nunca. \nEs tu amante Salvador. \nNunca, pues, te dé temor.\n\n\nNo te dé temor morir por Cristo; \nVía, verdad y vida es él.\nÉl te llevará con su ternura \nA su célico vergel.\n\n\nCORO\nNo te dé temor. No te dé temor.\nNunca, nunca, nunca. \nEs tu amante Salvador. \nNunca, pues, te dé temor.',
     'Oh, bondad tan infinita hacia el mundo pecador:\nDios en Cristo revelando su eternal y santo amor.\n\n\nCORO\nEs Jesús para mí la esperanza de salud; \nSólo en él hallaré la divina plenitud.\n\n\nComo el vasto firmamento, como el insondable mar, \nEs la gracia salvadora que Jesús al alma da.\n\n\nCORO\nEs Jesús para mí la esperanza de salud; \nSólo en él hallaré la divina plenitud.\n\n\nAunque fueren tus pecados rojos como el carmesí, \nEn el río del Calvario hay limpieza para ti.\n\n\nCORO\nEs Jesús para mí la esperanza de salud; \nSólo en él hallaré la divina plenitud.',

      ];

      final random = (list.toList()..shuffle());


      //var element = list[r.nextInt(list.length)]; 
      //var element = list[_rnd.nextInt(1)]; 
  
     //var randomItem = (list.toList()..shuffle());


     
   // var element = list[_rnd.nextInt(list.length)];

   

    
     //var l = List.generate(12, (_) => _rnd.nextInt(100));
  
  


    

class AleatorioPage extends StatelessWidget {
  
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 37, 57, 1.0),
        title: Text('HimnoAleatorio'),
      ),
      body: Stack(
        
        
        children: <Widget>[
          _fondoApp(),
          

          //_lista(),
         

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

    /*for (var i = 0; i < 10; i++) {
    var n = _rnd.nextInt(i + 1);

       var temp = list[i];
       list[i] = list[n];
       list[n] = temp;
  } */
  
  return 
       SafeArea(
      child: Container(
        padding: EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(random.toString(), 

            //'Iglesia de Cristo  \n\nHimnos y Canticos'
            //'Esta es una aplicacion para disfrutar con gozo y alegria los himnos y canticos'
            //'Aplicacion para celular \n\nLenguaje de Programacion: Dart \n\n Framework: Flutter'
            style: TextStyle( color: Colors.white, fontSize: 20.0 ))
          ],
        ),
      ),
    );

  }

  
  



  Widget _lista(){

     return FutureBuilder(
      future: buscadorProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {
        return ListView(
        children: _listaItems(snapshot.data, context),
        );
      },
   );

  }

      

  

      //String listas = '${opt['letra']}';
  

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

  final List<Widget> opciones = [];
  /*
  data.forEach((opt){

      String listas = '${opt['letra']}';
      final element = list[_random.nextInt(list.length)];
   
  });
  return opciones;*/

  }

}

   


    





/*


    return FutureBuilder(
      future: buscadorProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {
        if (snapshot.hasData) {

          final himnos = snapshot.data;

          

          return ListView(
            //children: himnos.map((himno) => (himno['letras'])),

            children: himnos.map((himno){
              final element = himno['letra'];
              final elementDos = element[r.nextInt(element.length)];
              
              return ListTile(
                title: Text (elementDos),
                //Text(himno['letra']),;
                
                
              );
            }).toList()

          );
          
        

        } else {
          return Center(
             child: CircularProgressIndicator(),
           );
        }
        
        /*ListView(
        children: _listaItems(snapshot.data, context),
        );*/
      },
   );*/


  


  

  /*
  
  data.forEach((opt){
    

    final widgetTemp = ListTile(
      
      contentPadding: EdgeInsets.all(5),
      
      title: Text(opt ['texto'],style: TextStyle(fontSize: 25, color: Colors.white)),
      subtitle: Text(opt['subtexto'],style: TextStyle(fontSize: 15, color: Colors.amberAccent)),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.lightBlueAccent,),

    

      onTap: () {


         
      }, 

    ); 

    
    opciones..add( widgetTemp )
            ..add(Divider())
            ;
      

  });*/
