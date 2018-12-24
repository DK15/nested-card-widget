import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NestedCard(),
      ),
    );
  }
}

class NestedCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Nested Card Widget'),
      ),
      body: Container(
        width: double.infinity,
        height: 320.0,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                title: Text('AUSTRALIA V INDIA', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
                ),),
                subtitle: Text('3RD TEST, MELBOURNE',
                style: TextStyle(
                  letterSpacing: 2
                ),),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.videocam),
                      title: Text(
                        'Monga: Will we see more sweeps from India at MCG?', style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.photo),
                      title: Text(
                          'The dismal story of Indias opening act', style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.photo),
                      title: Text(
                        'Manjrekar: Hanuma Vihari should play up the order', style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }

}