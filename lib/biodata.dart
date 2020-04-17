import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Biodata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("My Biodata"),
          centerTitle: true,
        ),
      backgroundColor: Colors.blueGrey,
      
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
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(image: AssetImage('img/profil.jpg'),
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
                  Text('Klementinus Nardi Hani',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('nardihany@gmail.com',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          
          
         ListTile(
             leading : Icon (Icons.location_city, color: Colors.black,),
             title: Text(": UNDIKSHA", style: TextStyle(color: Colors.white,)),
          ),
           ListTile(
             leading : Icon (Icons.my_location, color: Colors.black,),
             title: Text(": Singaraja, Bali",style: TextStyle(color: Colors.white,)),
          ),
         ListTile(
             leading : Icon (Icons.home, color: Colors.black,),
             title: Text(": Flores, Nusa Tenggara Timur",style: TextStyle(color: Colors.white,)),
          ),
      ],
      ),
    );
  }
}
