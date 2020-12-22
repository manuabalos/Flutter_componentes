import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Slider')),
        body: Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                Divider(),
                _crearSlider(),
                Divider(),
                _crearCheckbox(),
                Divider(),
                _crearSwitch(),
                Divider(),
                Expanded(child:  _crearImagen())
              ],
            )));
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: _bloquearCheck ? null : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://static01.nyt.com/images/2020/03/07/multimedia/07xp-marnie/07xp-marnie-mediumSquareAt3X.jpg'),
        width: _valorSlider,
        fit: BoxFit.contain
      );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _bloquearCheck, 
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //   }
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      }
    );
  }
}
