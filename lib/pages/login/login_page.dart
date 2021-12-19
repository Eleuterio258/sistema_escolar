
import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/alter_dialog_component.dart';
import 'package:sistema_escolar/components/form_field_components.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _crtEmail = TextEditingController();
  final _crtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var raisedButton = ElevatedButton(
      onPressed: () {
        _cliqueButton(context);
      },
      child: Text(
        "Entrar",
        style: TextStyle(fontSize: 20),
      ),
  //    color: Colors.blue,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormFieldComponents(
                hint: 'Digite o email',
                label: 'E-mail',
                controller: _crtEmail,
                validator: _validaLogin,
                senha: false,
                teclado: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FormFieldComponents(
                hint: 'Digite a senha',
                label: 'Senha',
                controller: _crtSenha,
                validator: _validaSenha,
                senha: true,
                teclado: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: raisedButton,
            ),
          ],
        ),
      ),
    );
  }

  String _validaLogin(String texto) {
    if (texto.isEmpty) {
      return "Digite o Email";
    }
    if (!texto.contains("@") || !texto.contains(".")) {
      return "Email envalido";
    }

    return null;
  }

  String _validaSenha(String texto) {
    if (texto.isEmpty) {
      return "Digite a Senha";
    }
    if (texto.length < 8) {
      return "A Senha Deve ter mais de 8 Caractere";
    }
    return null;
  }

  _cliqueButton(BuildContext context) async {
    bool formOk = _formkey.currentState.validate();
    if (!formOk) {
      return;
    }
    String email = _crtEmail.text;
    String senha = _crtSenha.text;

    print("login $email $senha");
    var usuario;
    if (usuario != null) {
      print("==> $usuario");
      _nevegarTela(context);
    } else {
      alert(context, "Login Invalido");
    }
  }

  _nevegarTela(BuildContext context) {
    Navigator.pushReplacementNamed(context, 'users');
  }
}
