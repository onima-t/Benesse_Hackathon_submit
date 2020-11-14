import 'package:flutter/material.dart';
import 'NextPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('mi card'),
      // ),
      backgroundColor: Colors.indigo[500],
      body: Center(
        child: RaisedButton(
          child: Text('自習室へいく！'),
          onPressed: (){
            print('jisyuu!');
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NextPage()
              ),
            );
          },
        ),
      ),
    );
  }
}
