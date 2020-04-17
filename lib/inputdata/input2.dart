import 'package:flutter/material.dart';
import 'result2.dart';


class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => new _InputDataState();
}

class _InputDataState extends State<InputData> {
  
  int nim = 0;
  int d1 = 0;
  int d2 = 0;
  double rms= 0;
  double luas = 0;

  var _nama = new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Input Data'),
      ),
      body: ListView(
        children: <Widget>[
          new Container (
            padding: new EdgeInsets.only(top: 20.0),
            margin: EdgeInsets.only(left: 15,right: 15,),
            child: new Column(
              children: <Widget> [
                new TextField(
                  controller: _nama,
                  decoration: new InputDecoration(
                      hintText: "Masukkan Nama Lengkap",
                      labelText: "Nama",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      nim = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: new InputDecoration(
                      hintText: "Masukkan NIM",
                      labelText: "NIM",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 15.0)),

                Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Input 0.5, d1 & d2 dari Layang" ',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                ),
               
                 new Padding(padding: new EdgeInsets.only(top: 15.0)),

                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                             rms = double.parse(txt);
                          });
                        },

                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Set (0.5)",
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                            ),
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    Expanded(
                      child: TextField(

                        onChanged: (txt) {
                          setState(() {
                            d1 = int.parse(txt);
                          });
                        },

                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Diagonal_1",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                            ),
                           ),
                      ),
                    ),
                     SizedBox(
                      width: 5,
                    ),
                     Expanded(
                      child: TextField(

                        onChanged: (txt) {
                          setState(() {
                            d2 = int.parse(txt);
                          });
                        },

                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Diagonal_2",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                            ),
                        ),
                      ),
                    ),
                  ],
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext) =>
                          new Result (nama: _nama.text, nim: nim, d1: d1, rms: rms, d2: d2, luas: luas,),
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    child: Text(
                      'Hitung',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ]
      ),
    );
  }
}


