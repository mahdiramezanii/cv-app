import 'package:flutter/material.dart';

void main() {
  runApp(GetAplication());
}

class GetAplication extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return GetBody();
  }
}


Widget GetBody(){


  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "vazir"),
    home: Scaffold(body: SafeArea(
      child: Text("مهدی رمضانی")
      ),
      ),
  );
}