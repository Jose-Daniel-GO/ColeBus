import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/circle.dart';
import '../widgets/input_text.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({super.key});
  @override
  // _LoginPageState createState() => _LoginPageState();
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          children: <Widget>[
            Positioned(
              right: -size.width * 0.15,
              top: -size.width * 0.34,
              child: Circle(
                radius: size.width * 0.45,
                colors: [Colors.blue.shade400, Colors.indigo],
              ),
            ),
            Positioned(
              left: -size.width * 0.15,
              top: -size.width * 0.34,
              child: Circle(
                radius: size.width * 0.35,
                colors: [Colors.blueGrey.shade50, Colors.blue.shade700],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                width: size.width,
                height: size.height,
                child: SafeArea(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsets.only(top: size.width * 0.3),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12, blurRadius: 10),
                                ]),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Hello again, \n welcome back",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          ConstrainedBox(
                              constraints:
                                  BoxConstraints(maxWidth: 350, minWidth: 350),
                              child: Form(child: 
                              Column(
                                children: [
                                  InputText(
                                    label: "Correo electronico",
                                  ),
                                  SizedBox(height: 40),
                                  InputText(label: "Contraseña")
                                ],
                              ))),
                          SizedBox(height: 40),
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: 350, minWidth: 350),
                            child: CupertinoButton(
                              color: CupertinoColors.activeBlue,
                              borderRadius: BorderRadius.circular(4),
                              onPressed: () {},
                              child: Text("Iniciar sesion",
                                  style: TextStyle(fontSize: 18)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Registrarse",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54)),
                              CupertinoButton(
                                  onPressed: () {},
                                  child: Text("Ingresar",
                                      style: TextStyle(fontSize: 16)))
                            ],
                          )
                        ],
                      ),
                    ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
