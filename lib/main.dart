import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(GetAplication());
}

class GetAplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBody();
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
      backgroundColor: Colors.cyan,
      title: Center(
        child: Text("مهدی رمضانی هستم"),
      ),
    );
  }

  Widget getbody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _getHeader(),
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Center(
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 70,
            // backgroundImage: AssetImage("assetName"),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "من مهدی رمضانی هستم برنامه نویس فلاتر",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Text(
            "فعالیت اصلی من برنامه نویسی بک اند با استفاده از فریمورک جنگو و زبان پایتون است و در حال حاضر بخ صورت فریلنرسی مشغول به کار هستم ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 7),
        getRowIcon(),
        SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _getSkilCard(path_image: "assets/dart.png", text: "dart"),
            _getSkilCard(path_image: "assets/flutter.png", text: "Flutter"),
            _getSkilCard(path_image: "assets/python.png", text: "Python"),
          ],
        )
      ],
    );
  }

  Widget _getSkilCard({required String path_image, required String text}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage(path_image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getRowIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.squareInstagram,
            size: 40,
          ),
          color: Colors.red,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.squareGithub,
            size: 40,
          ),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
            size: 40,
          ),
          color: Colors.blue,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.telegram,
            size: 40,
          ),
          color: const Color.fromARGB(255, 105, 174, 231),
        ),
      ],
    );
  }
}
