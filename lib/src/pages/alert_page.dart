import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () => _mostrarAlert(context),
          shape: StadiumBorder(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Título'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la caja de la alerta.'),
              FlutterLogo(
                size: 100.0
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
            FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('Aceptar')),
          ],
        );
      }
    );
  }
}
