import 'package:flutter/material.dart';
import 'package:sistema_escolar/components/form_field_components.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
      child: const Text(
        "Entrar",
        style: TextStyle(fontSize: 20),
      ),
      //    color: Colors.blue,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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

  _cliqueButton(BuildContext context) async {
    bool formOk = _formkey.currentState!.validate();
    if (!formOk) {
      return;
    }
  }

}
