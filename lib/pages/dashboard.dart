import 'package:flutter/material.dart';
import 'package:flutter_login/widgets/navbar.dart';

class DashBoardPage extends StatefulWidget {
  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('SideBar'),
        backgroundColor: Colors.blue.shade600, //
      ),
      body: Center(),
    );
  }
}
