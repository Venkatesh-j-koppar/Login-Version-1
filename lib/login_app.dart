import 'package:flutter/material.dart';

class login_app extends StatefulWidget {
  @override
  _login_appState createState() => _login_appState();
}

class _login_appState extends State<login_app> {
  final form_key= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: form_key,
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset("images/face.png",
                color: Colors.white,
                width: 90,
              height: 100,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor:Colors.white,
                  labelText: "Names",
                  border: OutlineInputBorder(
                    gapPadding: 3.3,
                    borderRadius: BorderRadius.circular(10.0)
                  )
                    

                ),
                  validator: (value){
            if(value.isEmpty){
            return "Enter the name";

            }
            else{

            print("All is good");
            }

            },


              ),
            ),
            Center(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(

                  labelText: "Password",
                  border: OutlineInputBorder(


                    gapPadding: 2.3,
                    borderRadius: BorderRadius.circular(10.0)
                  ),


                ),



              ),
            ),
            Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly ,

             children: <Widget>[
               
               RaisedButton(onPressed: (){
                 if(form_key.currentState.validate()){
                   Scaffold.of(context)
                   .showSnackBar(SnackBar(content:Text("all is Good")));

                 }


               },
                 child:  Text("Submit",style: TextStyle(
                color: Colors.white,
               ),),




               ),
               RaisedButton(onPressed: null,
               child: Text("Clear",style: TextStyle(
                 color: Colors.white
               ),),
               )

             ],
           ),
    )

          ],

        ),


      ),
      
    );
  }
}
