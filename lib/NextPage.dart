import 'package:flutter/material.dart';
import 'HomePage.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  Container make_icons(String asset_name) =>  Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('$asset_name')
          )
      )
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('プロフィール'),
        ),
        backgroundColor: Colors.indigo[500],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300.0,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  make_icons('images/human1.png'),
                  make_icons('images/dog.png'),
                  make_icons('images/cat.png'),
                  make_icons('images/clown-fish.png'),
                ]),
              ),
              SizedBox(
                width: 200,
                child: TextField(
                  enabled: true,
                  // 入力数
                  maxLengthEnforced: false,
                  style: TextStyle(color: Colors.black),
                  obscureText: false,
                  maxLines: 1,
                  decoration: const InputDecoration(hintText: 'ニックネームを入力'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'このルームで共有する名前を入力できます',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      backgroundColor: Colors.indigo[500],
      body: Center(
        child: RaisedButton(
          child: Text('nextpage'),
          onPressed: (){
            print('jisyuu!');
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage()
              ),
            );
          },
        ),
      ),
    );
  }
}