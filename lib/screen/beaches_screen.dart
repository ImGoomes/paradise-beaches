import 'package:flutter/material.dart';
import 'package:paradise_beaches/models/beach_model.dart';
import 'package:paradise_beaches/repository/beach_repository.dart';


class BeachesScreen extends StatefulWidget {
  @override
  _BeachesScreenState createState() => _BeachesScreenState();
}

class _BeachesScreenState extends State<BeachesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(235, 197, 121, .9),
        title: Text("Praias"),
      ),
      body: FutureBuilder<List<BeachModel>>(
        future: BeachRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<BeachModel> beachs) {
    return ListView.builder(
      itemCount: beachs == null ? 0 : beachs.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardbeach(beachs[index]);
      },
    );
  }

  Card cardbeach(BeachModel beach) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          title: Text(
            beach.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            beach.local,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {

            Navigator.pushNamed(
              context,
              "/beach_detail",
              arguments: beach,
            );

          },
        ),
      ),
    );
  }

  
}