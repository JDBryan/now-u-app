import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child:
                    Text("Information", style: Theme.of(context).primaryTextTheme.title),
                  )

              ),
              Container(
                height:200,
                padding: EdgeInsets.all(20),
                child: InfoList(),
              )
            ],

          )
      ),
    );
  }
}

class InfoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        InfoItem("Information", Icon(Icons.info)),
        InfoItem("News", Icon(Icons.info)),
        InfoItem("Hello", Icon(Icons.info))
      ],
    );
  }
}

class InfoItem extends StatelessWidget {
  String text;
  Icon icon;

  InfoItem (t, i) {
    text = t;
    icon = i;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          icon,
          Text(
            text,
            style: 20,
          )
        ]
    );
  }
}
