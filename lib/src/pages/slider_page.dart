import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 30.0;
  bool _bloquearSliderCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(children: [
          _crearSliders(),
          _crearCheckBox(),
          Expanded(child: _crearImagen()),
        ]),
      ),
    );
  }

  _crearSliders() {
    return Slider(
        activeColor: const Color.fromARGB(255, 218, 44, 44),
        label: 'Tamaño de este maño',
        divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: _bloquearSliderCheck
            ? (opt) {
                setState(() {
                  _valorSlider = opt;
                });
              }
            : null);
  }

  _crearImagen() {
    return Image(
      image: const NetworkImage(
        'https://th.bing.com/th/id/OIP.f2sW-ohTP-PYBFyOvfRIkQHaE8?pid=ImgDet&rs=1',
      ),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  _crearCheckBox() {
    // return Checkbox(
    // value: _bloquearSliderCheck,
    // onChanged: (opt) {
    //   setState(() {
    //     _bloquearSliderCheck = !_bloquearSliderCheck;
    //   });
    // },
    // );
    // return CheckboxListTile(
    //   contentPadding: EdgeInsets.all(30.0),
    //   title: const Text('Bloquear Slider'),
    //   value: _bloquearSliderCheck,
    //   onChanged: (opt) {
    //     setState(() {
    //       _bloquearSliderCheck = !_bloquearSliderCheck;
    //     });
    //   },
    // );
    return SwitchListTile(
      contentPadding: const EdgeInsets.all(30.0),
      title: const Text('Bloquear Slider'),
      value: _bloquearSliderCheck,
      onChanged: (opt) {
        setState(() {
          _bloquearSliderCheck = !_bloquearSliderCheck;
        });
      },
    );
  }
}
