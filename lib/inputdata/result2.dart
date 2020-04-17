import 'package:flutter/material.dart';


class Result extends StatelessWidget {

  Result({@required this.nama, @required this.nim, @required this.d1,@required this.d2, @required this.luas,
  @required this.rms,});
 
  final int nim;  //menampung nim yang di input
  final String nama; //untuk menampung nama yang di input
  final int d1;
  final int d2;
  final double rms;
  final double luas;

  @override
  Widget build(BuildContext context) {
     
     double luas = rms*(d1*d2) ;

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
            new Text(
                "Hasil : ${luas}",
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

