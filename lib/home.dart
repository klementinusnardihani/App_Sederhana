import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list, color: Colors.black,),
        title: new Text('App'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.person, color: Colors.black,),
              onPressed: (){
                Navigator.pushNamed(context, '/Halbiodata');
              },
          )
        ],
      ),


       backgroundColor: Colors.grey,
       body: ListView(
        children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 175,
                        width: 175,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(image: AssetImage('img/hitung.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text('MENGHITUNG LUAS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 10.0)),
                  
                  ListTile(
                    onTap: (){
                      Navigator.of(context).pushNamed('/Halinput');
                    },
                    leading : Icon (Icons.star, color: Colors.black,),
                    title: Text("Luas Segitiga", style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  ),
                  ListTile(
                     onTap: (){
                      Navigator.of(context).pushNamed('/Halinput2');
                    },
                    leading : Icon (Icons.star, color: Colors.black,),
                    title: Text("Luas Layang-Layang",style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  ),
                ],
              ),
            ),
         ],
      ),
    );
  }
}
