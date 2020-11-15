import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'NextPage.dart';
import '../color.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColor,
      body: Center(
        child: ChangeForm(),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                  border: Border.all(color: ABColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  trailing: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.teal,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NextPage()),
                        );
                      },
                      icon: Icon(Icons.login,
                        color: Colors.white,),
                    ),
                  ),
                  title: new TextFormField(
                    enabled: true,
                    // 入力数
                    maxLengthEnforced: false,
                    style: TextStyle(
                        color: ABColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    obscureText: false,
                    maxLines: 1,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly,
                    ],
                    decoration: const InputDecoration(
                        hintText: '番号を入力',
                        hintStyle: TextStyle(fontSize: 20),
                        labelText: 'ルームへ入室',
                        labelStyle: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NextPage()),
                        );
                      },
                      icon: Icon(Icons.add_circle,
                        color: ABColor,size: 70
                        ,),
                    ),
                    SizedBox(
                        height:40
                    ),
                    Text('Create New Room')
                  ],
                ),
              ),
              RaisedButton(
                child: const Text('入室する'),
                color: Colors.white,
                onPressed: () {
                  print('jisyuu!');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage()),
                  );
                },
                highlightElevation: 16,
                highlightColor: Colors.blue,
                onHighlightChanged: (value) {},
              ),
              SizedBox(
                height: 80.0,
              ),
              Text('自動的に相手を選んで勉強するモードです'),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                child: const Text('ランダムルーム\n入室する'),
                color: Colors.pink[300],
                onPressed: () {},
                highlightElevation: 16,
                highlightColor: Colors.pink,
                onHighlightChanged: (value) {},
              ),
            ],
          )),
    );
  }
}