import 'package:flutter/material.dart';
import '../models/call_model.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(children: <Widget>[
        new Divider(
          height: 10.0,
        ),
        new ListTile(
          leading: new CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey,
            backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
          ),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                dummyData[i].name,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.call,
                color: Theme.of(context).accentColor,
              )
            ],
          ),
          subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Row(children: <Widget>[
                new Icon(
                  Icons.call_made,
                  color: Theme.of(context).accentColor,
                ),
                new Text(
                  dummyData[i].time,
                  style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                )
              ])),
        )
      ]),
    );
  }
}
