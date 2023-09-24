import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/circle.dart';
import '../widgets/input_text.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

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
                                    color: Colors.black12,
                                    blurRadius: 30,
                                    offset: Offset(0, 3),
                                    spreadRadius: 4,
                                  ),
                                ]),
                            child: Image.asset("assets/images/ColeBus.png"),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "De regreso a \n Clases",
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
                              child: Form(
                                  child: Column(
                                children: [
                                  InputText(
                                      label: "Correo electronico",
                                      inputType: TextInputType.emailAddress,
                                      validator: (String text) {
                                        if (text.contains("@")) {
                                          return null;
                                        }
                                        return "Correo Incorrecto";
                                      }),
                                  SizedBox(height: 40),
                                  InputText(
                                      label: "Contraseña",
                                      validator: (String text) {
                                        if (text.contains("@")) {
                                          return null;
                                        }
                                        return "Correo Incorrecto";
                                      })
                                ],
                              ))),
                          SizedBox(height: 40),
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: 350, minWidth: 350),
                            child: CupertinoButton(
                              color: CupertinoColors.activeBlue,
                              borderRadius: BorderRadius.circular(4),
                              onPressed: () =>
                                  Navigator.pushNamed(context, "dashboard"),
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
                                  onPressed: () =>
                                      Navigator.pushNamed(context, "signup"),
                                  child: Text("Registrase",
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
