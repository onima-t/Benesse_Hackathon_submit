import 'package:benesse/color.dart';
import 'package:flutter/material.dart';

class TimelineTab extends StatefulWidget {
  @override
  _TimelineTabState createState() => _TimelineTabState();
}

class _TimelineTabState extends State<TimelineTab> {
  Container make_icons(String asset_name) => Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('$asset_name'),
          ),
          border: Border.all(width: 20,color: Colors.indigo)
      )
  );
  Container make_post({String icon_name,String user_name,String time, String app_name})=> Container(

    decoration: new BoxDecoration(
      color: Colors.white,
      shape: BoxShape.rectangle,
    ),
    child: Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage(icon_name),
                  ),
                ),
              ),
              Text(user_name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Text(time,
              style: TextStyle(
                color: Colors.grey
              ),)
            ],
          ),
        ),
        Divider(
          thickness: 1,
            color: Colors.grey,
        ),
        Container(
          height: 200,
            width: 200,
            child: Image.asset(app_name)),
        SizedBox(
          height: 20,
          child: Container(
            color: BGColor,
          ),
        )
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children:[

          SizedBox(
            height: 680.0,
            child: ListView(
              padding: EdgeInsets.all(50),
                scrollDirection: Axis.vertical, children: [
              make_post(icon_name: 'images/dog.png',user_name: 'Aさん', time: '17:53', app_name: 'images/twitter.png'),
              make_post(icon_name: 'images/cat.png',user_name: 'Bさん', time: '17:53', app_name: 'images/monst.png'),
              make_post(icon_name: 'images/clown-fish.png',user_name: 'Cさん', time: '17:53', app_name: 'images/chrome.png'),
              make_post(icon_name: 'images/cat.png',user_name: 'Bさん', time: '17:53', app_name: 'images/sinken.png'),
            ]),
          ),

        ],
      ),
    );
  }
}