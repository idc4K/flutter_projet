import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: IdcBuild(),
    );
  }
}

class IdcBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("OM Chat"),
        centerTitle: true,
        leading: Icon(Icons.sports),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.black,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset("images/img4.jpg", height: 300, width: size.width),
                Padding(
                  padding: EdgeInsets.only(top: 220),
                  child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: mypic(57)),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Dimitri Payet",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ],
        )),
      ),
    );
  }

  CircleAvatar mypic(double radius) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage("images/img3.jpg"),
    );
  }
}
