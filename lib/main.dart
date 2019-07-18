import 'package:flutter/material.dart';
import 'login_app.dart';

void main() => runApp(Myapp());


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final apptitle="login_page";
    return MaterialApp(
      title: apptitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(apptitle,),
          centerTitle:true,),
        backgroundColor: Colors.white70,
        body:login_app(),

      ),

    );
  }
}
