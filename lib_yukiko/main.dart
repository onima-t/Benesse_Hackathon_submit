import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;
    // var maxHeight = size.height - padding.top - padding.bottom;
    return MaterialApp(
      title: 'Form',
      home: Scaffold(
        backgroundColor: Colors.indigo[500],
        body: Center(
          child: ChangeForm(),
        ),
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
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            new TextField(
              enabled: true,
              // 入力数
              maxLength: 15,
              maxLengthEnforced: false,
              style: TextStyle(color: Colors.blueAccent,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500
              ),
              obscureText: false,
              maxLines:1 ,
              inputFormatters: <TextInputFormatter> [
                WhitelistingTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                hintText: '番号を入力',
                labelText: 'ルームへ入室',
              ),
              //パスワード
              onChanged: _handleText,
            ),
            RaisedButton(
              child: const Text('入室する'),
              color: Colors.white,
              onPressed: () {},
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
        )
    );
  }
}