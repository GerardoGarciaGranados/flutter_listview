import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var vengadores = ["capitan america", "iron man", "hulk", "thor"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
          //obtener el tamaño de la lista
          itemCount: vengadores.length,
          itemBuilder: (context, index) => ListTile(
            //Asignando el nombre de ListTile de acuerdo a la lista
            title: Text(vengadores[index]),
            //Asignando los iconos de cada ListTitle
            trailing: Icon(Icons.chevron_right, color: Colors.red),
            onTap: () {
              //Variable que obtiene opcion seleccionada
              var opc = vengadores[index];
              //Mostramos variable en consola
              print(opc);
            },
          ),
          //Creamos separadores de cada ListTile
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
