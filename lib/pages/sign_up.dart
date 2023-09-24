import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/circle.dart';
import '../widgets/input_text.dart';

class SignUpPage extends StatefulWidget {
  // const SignUpPage({super.key});
  @override
  // _LoginPageState createState() => _LoginPageState();
  State<SignUpPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  @override
  void initState() {
    // TODO: implement initState

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
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 30,
                                    offset: Offset(0, 3),
                                    spreadRadius: 4,
                                  ),
                                ]),
                            child: Image.asset("assets/images/userandroid.png"),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Nueva \n Aventura",
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
                                      label: "Nombre de Usuario",
                                      validator: (String text) {
                                        if (RegExp(r'^[a-zA-Z0-9]+$')
                                            .hasMatch(text)) {
                                          return null;
                                        }
                                        return "Correo Incorrecto";
                                      }),
                                  InputText(
                                      label: "Correo electronico",
                                      inputType: TextInputType.emailAddress,
                                      validator: (String text) {
                                        if (text.contains("@")) {
                                          return null;
                                        }
                                        return "Correo Incorrecto";
                                      }),
                                  SizedBox(height: 20),
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
                          SizedBox(height: 20),
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
                              Text("Ya tieners una cuenta?",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54)),
                              CupertinoButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("Ingresar",
                                      style: TextStyle(fontSize: 16)))
                            ],
                          )
                        ],
                      ),
                    ])),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: SafeArea(
                  child: CupertinoButton(
                padding: EdgeInsets.all(10),
                borderRadius: BorderRadius.circular(30),
                color: Colors.black26,
                onPressed: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
