import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'package:e_shop/Config/config.dart';
import 'package:flutter_shine/flutter_shine.dart';

class AuthenticScreen extends StatefulWidget {
  @override
  _AuthenticScreenState createState() => _AuthenticScreenState();
}

class _AuthenticScreenState extends State<AuthenticScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [Color.fromARGB(200,0,0,255),Colors.blueAccent],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          title: Center(
            child: Text('Alquilab',
              style: TextStyle(
                fontSize: 30.5, 
                color: Colors.black, 
                fontFamily: "Kaushan",
                letterSpacing: 5,
                fontWeight: FontWeight.w900
              )
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.login, color: Colors.black),
                text: "Ingresa",
              ),
              Tab(
                icon: Icon(Icons.perm_contact_calendar, color: Colors.black),
                text: "Registrate",
              ),
            ],
            indicatorColor: Colors.white38,
            indicatorWeight: 5.0,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: new LinearGradient(
              colors: [Colors.blueAccent, Color.fromARGB(200,0,0,255)],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: TabBarView(
            children: [
              Login(),
              Register(),
            ],
          ),
        ),
      ),
    );
  }
}
