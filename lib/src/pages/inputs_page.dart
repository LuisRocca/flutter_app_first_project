import 'package:flutter/material.dart';

class InputsPages extends StatefulWidget {
  const InputsPages({super.key});

  @override
  State<InputsPages> createState() => _InputsPagesState();
}

class _InputsPagesState extends State<InputsPages> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  String _optionSelect = 'flutter';
  List<String> _skills = [
    'node',
    'javaScript',
    'typeScript',
    'python',
    'deno',
    'flutter',
    'dart'
  ];

  TextEditingController _inputFielTime = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
          Divider(),
        ],
      ),
    );
  }

  _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Tu nombre',
          labelText: 'est es el texto del label',
          suffixIcon: Icon(Icons.accessibility_new_rounded),
          icon: Icon(Icons.account_circle_outlined)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
        print(_nombre);
      },
    );
  }

  _crearEmail() {
    return TextField(
      // autofocus: true,
      // textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          counter: Text('Letras ${_email.length}'),
          hintText: 'Tu email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email_outlined),
          icon: Icon(Icons.email_outlined)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
        print(_email);
      },
    );
  }

  _crearPassword() {
    return TextField(
      // autofocus: true,
      // textCapitalization: TextCapitalization.sentences,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          counter: Text('Letras ${_password.length}'),
          hintText: 'Tu password',
          labelText: 'password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock_clock_outlined)),
      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
        print(_password);
      },
    );
  }

  List<DropdownMenuItem<String>> getOptionDropdow() {
    List<DropdownMenuItem<String>> lista = [];
    _skills.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return lista;
  }

  _crearDropdown() {
    return Row(
      children: [
        Icon(Icons.wysiwyg_rounded),
        SizedBox(
          width: 30.0,
        ),
        DropdownButton(
            items: getOptionDropdow(),
            value: _optionSelect,
            onChanged: (opt) {
              setState(() {
                _optionSelect = opt.toString();
              });
            }),
      ],
    );
  }

  _crearFecha() {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFielTime,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          counter: Text('Letras ${_password.length}'),
          hintText: 'Fecha de Nacimiento',
          labelText: 'Fecha',
          suffixIcon: Icon(Icons.calendar_month),
          icon: Icon(Icons.calendar_month_outlined)),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        _selectData(context);
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('nombre: $_nombre'),
      subtitle: Text('email: $_email'),
    );
  }

  void _selectData(BuildContext context) async {
    final picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2030),
        locale: const Locale('es'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFielTime.text = _fecha;
      });
    }
  }
}
