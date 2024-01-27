import 'package:flutter/material.dart';

void main() {
  runApp(GetAplication());
}

class GetAplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBody();
  }
}

Widget GetBody() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "vazir"),
    home: Scaffold(
      appBar: getAppBar(),
      body: SafeArea(
        child: getbody(),
      ),
    ),
  );
}

PreferredSizeWidget getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.amber,
    title: Center(
      child: Text("مهدی رمضانی هستم"),
    ),
  );
}

Widget getbody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Center(
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 70,
            // backgroundImage: AssetImage("assetName"),
          ),
        ),
        Text(
          "من مهدی رمضانی هستم برنامه نویس فلاتر",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}
