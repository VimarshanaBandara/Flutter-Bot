import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Center(
            child: Container(
              padding:EdgeInsets.only(top: 30.0,),
              child: Text('Flutter Bot',style: TextStyle(fontSize: 30.0,fontFamily: "Tron",color: Colors.cyanAccent),),
            ),
          ),
          Container(
            width: 240.0,
            padding: EdgeInsets.only(top: 30.0),
            child:Center(

               child: Container(
                 width: 240.0,
                height: 40.0,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Robot's Name",
                    border: OutlineInputBorder(


                    )
                  ),
                  onFieldSubmitted:(name){
                    showDialog(context: context,
                    builder:(BuildContext context){
                      return Image.network('https://robohash.org/${name}');
                    }
                    );
                  }

    ),
    ),
    )

          )
        ],
      ),
    );
  }
}

