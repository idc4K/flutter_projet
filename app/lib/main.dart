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
    var width = MediaQuery.of(context).size.width;

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
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Le meneur et le maitre  à jouer de l'olympique de Marseille",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                )),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 60),
                  child: ButtonCont(text: "Modifier votre profile", width: 200),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: ButtonCont(icon: Icons.sports),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(right: 298, top: 12),
                child: Text(
                  "A Propos de Moi",
                  style: TextStyle(color: Colors.white),
                )),

            // A Propos De Moi

            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Apropos(icon: Icons.house, text: "Rabat Sale, Maroc"),
            ),

            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Apropos(icon: Icons.work, text: "Developper"),
            ),

            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Apropos(icon: Icons.favorite, text: "En couple"),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            // Amis
            Padding(
                padding: EdgeInsets.only(right: 360, top: 12),
                child: Text(
                  "Amis",
                  style: TextStyle(color: Colors.white),
                )),
            Row(mainAxisSize: MainAxisSize.max, children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 5),
                child: imageAmis("B.Dieng", "images/img8.jpg", width / 3.2, 30),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 5),
                child:
                    imageAmis("B.Kamara", "images/img9.jpg", width / 3.2, 20),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 5),
                child: imageAmis(
                    "A.P.Gignac", "images/img10.jpg", width / 3.2, 30),
              ),
            ])
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

  Container ButtonCont({IconData icon, String text, double width}) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: width,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: (icon == null)
          ? Center(
              child: Text(
              text ?? "",
              style: TextStyle(color: Colors.white),
            ))
          : Icon(icon, color: Colors.white),
    );
  }

  Widget Apropos({IconData icon, String text}) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  Column imageAmis(String name, String imagePath, double width, double radius) {
    return Column(
      children: [
        Container(
          width: width,
          height: width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imagePath)),
            borderRadius: BorderRadius.circular(radius),
            // color: Colors.blue,
            // boxShadow: [BoxShadow(color: Colors.grey)]
          ),
        ),
        Text(name, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
