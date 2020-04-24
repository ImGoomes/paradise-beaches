import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paradise_beaches/models/beach_model.dart';

class BeachDetailScreen extends StatelessWidget {
  BeachModel beachModel;

  @override
  Widget build(BuildContext context) {
    beachModel = ModalRoute.of(context).settings.arguments;

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 100.0),
        Text(
          beachModel.nome,
          style: TextStyle(
            color: Colors.white,
            fontSize: 45.0,
          ),
        ),
        SizedBox(height: 22.7),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("beach.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .6)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    final bottomSubText = Text(
      beachModel.local,
      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      textAlign: TextAlign.justify,
    );

    final bottomContentText = Text(
      beachModel.descrico,
      style: TextStyle(fontSize: 18.0),
      textAlign: TextAlign.justify,
    );

    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[
            bottomSubText,
            SizedBox(height: 50.0),
            bottomContentText,
          ],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          topContent,
          bottomContent,
        ],
      ),
    );
  }
}
