import 'package:flutter/material.dart';

class login_app extends StatefulWidget {
  @override
  _login_appState createState() => _login_appState();
}

class _data{
  String name='';
  String password='';

}

class _login_appState extends State<login_app> {
  final form_key= GlobalKey<FormState>();
  _data log=new _data();
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
              height: 80,),
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
            log.name=value;
            print(log.name);
            }

            },


              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(

                    labelText: "Password",
                    border: OutlineInputBorder(


                      gapPadding: 3.3,
                      borderRadius: BorderRadius.circular(10.0)
                    ),


                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return "Enter your password";


                    }
                    else{
                      log.password=value;
                       print(log.password);
                    }

                  },



                ),
              ),
            ),
            Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly ,

             children: <Widget>[
               
               RaisedButton(onPressed: (){
                 if(form_key.currentState.validate()){
                   setState(() {
                     log.name=log.name;
                   });
                   Scaffold.of(context)
                   .showSnackBar(SnackBar(content:Text("Well Done")));

                 }


               },
                 child:  Text("Submit",style: TextStyle(
                color: Colors.white,
                   //fontSize: 15.0,
                   //fontWeight: FontWeight.w400,
               ),),




               ),
               RaisedButton(onPressed: (){
                 if(form_key.currentState.validate()){

                   form_key.currentState.reset();
                   setState(() {
                     log.name='';
                   });
                 }




               }
                 ,child: Text("Clear",style: TextStyle(
                 color: Colors.white,
                  // fontSize: 15.0,
                   //fontWeight: FontWeight.w400,
               ),),
               ),


             ],
           ),

            ),

               Padding(
                padding: const EdgeInsets.all(8.0),
                child:Center(
                 child: log.name.isEmpty ?  Text("") : Text(
                  "welcome ${log.name}",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                  fontSize: 15.0,
                  color: Colors.white,
                ),),
              ),
            )

          ],

        ),


      ),
      
    );
  }
}
