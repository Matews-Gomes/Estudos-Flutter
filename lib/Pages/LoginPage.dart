import 'package:estudos/Functions/LoginFunction.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text("Logo Aqui!"),
            ),
            Container(
              padding: EdgeInsets.all(18),
              child: Form(
                  key: _formState,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _controllerEmail,
                        validator: (value) =>
                            LoginFunction().validarEmail(_controllerEmail.text),
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                      TextFormField(
                        controller: _controllerPassword,
                        validator: (value) => LoginFunction()
                            .validarPass(_controllerPassword.text),
                        decoration: InputDecoration(
                          hintText: "Senha",
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              width: width / 1.2,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                child: Text(
                  "Entrar",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  /*if (_formState.currentState.validate()) {
                    print("Validar Campos!");
                  }*/
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
