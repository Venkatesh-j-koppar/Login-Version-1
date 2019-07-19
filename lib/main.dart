import 'package:flutter/material.dart';
import 'login_app.dart';

void main() => runApp(Myapp());


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final apptitle="Login_page";
    return MaterialApp(
      title: apptitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(apptitle,),
          centerTitle:true,),
        backgroundColor: Colors.white60,
        body:login_app(),

      ),

    );
  }
}
