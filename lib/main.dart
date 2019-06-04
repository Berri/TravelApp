import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

var gradient1 = [Color(0xFFdc5f89), Color(0xFFeea694)];
var gradient2 = [Color(0xFF269b70), Color(0xFF7ce6a9)];
var gradient3 = [Color(0xFF526fe2), Color(0xFF8351e5)];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222838),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Travel",
                    style: TextStyle(color: Colors.white, fontSize: 24.0)),
                SizedBox(height: 8.0),
                Container(
                  color: Color(0xFF272c3d),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 8.0,
                      ),
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Cari Tempat Wisata",
                              hintStyle: TextStyle(color: Colors.white54),
                              border: InputBorder.none),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  height: 32.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GradientButton("Jakarta", gradient1),
                      GradientButton("Pontianak", gradient2),
                      GradientButton("Jogjakarta", gradient3),
                      GradientButton("Bandung", gradient1),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final nama;
  final warna;
  GradientButton(this.nama, this.warna);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            gradient: LinearGradient(
                colors: warna,
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(nama,
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
