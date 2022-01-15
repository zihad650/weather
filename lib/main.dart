import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherapi/datahelper.dart';

import 'dart:convert';

import 'package:weatherapi/datamodel.dart';

void main() => runApp(MaterialApp(
      title: "Weather App",
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<ModelData> _modellist = <ModelData>[];

  recivedWeather() async {
    DataHelper dataHelper = DataHelper();
    dataHelper.getWeather();
    setState(() {
      _modellist = dataHelper.modellist;
    });
  }

  @override
  void initState() {
    super.initState();
    recivedWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Corrently in Madaripur",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "Temp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Rain",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          /*Expanded(child: Padding(padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                title: Text('Temperature'),
                trailing: Text("52\u00B0"),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.cloud),
                title: Text('Weather'),
                trailing: Text("Weather"),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.sun),
                title: Text('TemperaHumidityture'),
                trailing: Text("12"),
              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.wind),
                title: Text('Wind Speed'),
                trailing: Text("12"),
              ),
            ],
          ),
          ))*/
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            height: 300,
            child: ListView.builder(
                itemCount: _modellist.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .25,
                        child: Text(_modellist[index].sys.toString(),
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic)),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}

jesonDecode(String body) {}
