import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  Result({@required this.nama, @required this.nim, @required this.luas,@required this.rms,@required this.alas,
   @required this.tinggi,});
 
  final int nim;  //menampung nim yang di input
  final String nama; //untuk menampung nama yang di input
  final double luas;   
  final int alas;
  final int tinggi;
  final double rms;

  @override
  Widget build(BuildContext context) {
     double luas = rms*alas*tinggi;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Hasil Perhitungan'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.navigate_next, color: Colors.white, size: 33.0,),
              onPressed: (){
                Navigator.pushNamed(context, '/Home');
              },
          )
        ],
      ),

      backgroundColor: Colors.grey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(  ),),
            new Text(
                "Nama : ${nama}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white
              ),
            ),
            SizedBox(height: 10,child: Container(),),
            new Text(
                "NIM : ${nim}",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
              ),
            ),
             SizedBox(height: 10,child: Container(),),

            new Padding(padding: new EdgeInsets.only(top: 15.0)),
            Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Berikut adalah hasil perhitungan Anda.',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                ),

              new Padding(padding: new EdgeInsets.only(top: 10.0)),

            new Text(
                "Hasil = ${luas}",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}

